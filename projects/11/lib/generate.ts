// nand2tetris book p130
import { randomBytes } from "crypto";
import { Keyword, Symb } from "./consts";
import {
	ArrayElementAccessExpression,
	Ast,
	BinaryOperator,
	BinaryOperatorExpression,
	ConstantExpression,
	Declaration,
	DoStatement,
	Expression,
	FunctionCallExpression,
	IfElseStatement,
	LetStatement,
	ReturnStatement,
	RoutineDeclaration,
	RoutineType,
	Statement,
	SymbolKind,
	SymbolTableEntry,
	UnaryOperator,
	UnaryOperatorExpression,
	VariableExpression,
	WhileStatement,
} from "./parse";
import { TokenType } from "./tokenize";

// Memory commands

const add = (): string => "add";
const sub = (): string => "sub";
const neg = (): string => "neg";
const eq = (): string => "eq";
const gt = (): string => "gt";
const lt = (): string => "lt";
const and = (): string => "and";
const or = (): string => "or";
const not = (): string => "not";

// Memory access

type Segment =
	| "argument"
	| "local"
	| "static"
	| "constant"
	| "this"
	| "that"
	| "pointer"
	| "temp";
const push = (segment: Segment, index: number): string =>
	`push ${segment} ${index}`;
const pop = (segment: Segment, index: number): string =>
	`pop ${segment} ${index}`;

// Program Flow Commands

const label = (symbol: string): string => `label ${symbol}`;
const goto = (symbol: string): string => `goto ${symbol}`;
const ifGoto = (symbol: string): string => `if-goto ${symbol}`;

// Function Calling Commands

const func = (
	namespace: string,
	functionName: string,
	nLocals: number
): string => `function ${namespace}.${functionName} ${nLocals}`;
const call = (
	namespace: string | null,
	functionName: string,
	nArgs: number
): string =>
	namespace === null
		? `call ${functionName} ${nArgs}`
		: `call ${namespace}.${functionName} ${nArgs}`;
const ret = (): string => "return";

// Generation

const generateArrayElementAccessExpression = (
	{ name, index }: ArrayElementAccessExpression,
	symbols: readonly SymbolTableEntry[],
	className: string,
	isMethodBody: boolean
): readonly string[] => {
	const symbol = symbols.find((s) => s.name === name.value);
	if (!symbol) {
		throw new Error("Unsupported array index assignment");
	}
	const arrayIndex = generateExpression(
		index,
		symbols,
		className,
		isMethodBody
	);
	return [
		...arrayIndex,
		push(symbol.kind === SymbolKind.Field ? "this" : symbol.kind, symbol.index),
		add(),
		pop("pointer", 1),
		push("that", 0),
	];
};

const binaryOperatorToCode: Readonly<Record<BinaryOperator, string>> = {
	[Symb.And]: and(),
	[Symb.Asterisk]: call("Math", "multiply", 2),
	[Symb.Equals]: eq(),
	[Symb.ForwardSlash]: call("Math", "divide", 2),
	[Symb.GreaterThan]: gt(),
	[Symb.LessThan]: lt(),
	[Symb.Minus]: sub(),
	[Symb.Or]: or(),
	[Symb.Plus]: add(),
};

const generateBinaryOperatorExpression = (
	expression: BinaryOperatorExpression,
	symbols: readonly SymbolTableEntry[],
	className: string,
	isMethodBody: boolean
): readonly string[] => {
	const [left, right] = [expression.left, expression.right].map((e) =>
		generateExpression(e, symbols, className, isMethodBody)
	);
	const operation = binaryOperatorToCode[expression.operator];
	return [...left, ...right, operation];
};

const generateConstantExpression = ({
	token,
}: ConstantExpression): readonly string[] => {
	switch (token.type) {
		case TokenType.Keyword:
			switch (token.value) {
				case Keyword.Null:
				case Keyword.False:
					return [push("constant", 0)];
				case Keyword.True:
					return [push("constant", 0), not()];
				case Keyword.This:
					return [push("pointer", 0)];
				default:
					throw new Error(`Unsupported constant token keyword: ${token.value}`);
			}
		case TokenType.IntegerConstant:
			return [push("constant", parseInt(token.value, 10))];
		case TokenType.StringConstant: {
			return [
				push("constant", token.value.length),
				call("String", "new", 1),
				...token.value
					.split("")
					.flatMap((char) => [
						push("constant", char.charCodeAt(0)),
						call("String", "appendChar", 2),
					]),
			];
		}
		default:
			throw new Error(`Unsupported constant token type: ${token.type}`);
	}
};

const generateFunctionCallExpression = (
	{ args, name, namespace }: FunctionCallExpression,
	symbols: readonly SymbolTableEntry[],
	className: string,
	isMethodBody: boolean
): readonly string[] => {
	const argsCode = args.flatMap((arg) =>
		generateExpression(arg, symbols, className, isMethodBody)
	);
	const symbol = symbols.find((s) => s.name === namespace?.value) ?? null;
	if (symbol === null) {
		const isMethodCall = namespace === null;
		return isMethodCall
			? [
					push("pointer", 0),
					...argsCode,
					call(className, name.value, args.length + 1),
			  ]
			: [...argsCode, call(namespace.value, name.value, args.length)];
	}
	if (symbol.kind === SymbolKind.Field) {
		return [
			push("this", symbol.index),
			...argsCode,
			call(symbol.type, name.value, args.length + 1),
		];
	}
	if (symbol.kind === SymbolKind.Static) {
		throw new Error(`Unsupported symbol kind: ${symbol.kind}`);
	}
	return [
		push(symbol.kind, symbol.index),
		...argsCode,
		call(symbol.type, name.value, args.length + 1),
	];
};

const unaryOperatorToCode: Readonly<Record<UnaryOperator, string>> = {
	[Symb.Not]: not(),
	[Symb.Minus]: neg(),
};

const generateUnaryOperatorExpression = (
	{ operator, subexpression }: UnaryOperatorExpression,
	symbols: readonly SymbolTableEntry[],
	className: string,
	isMethodBody: boolean
): readonly string[] => {
	const operation = unaryOperatorToCode[operator];
	return [
		...generateExpression(subexpression, symbols, className, isMethodBody),
		operation,
	];
};

const generateVariableExpression = (
	expression: VariableExpression,
	symbols: readonly SymbolTableEntry[],
	isMethodBody: boolean
): readonly string[] => {
	const symbol = symbols.find((s) => s.name === expression.token.value);
	if (!symbol) {
		throw new Error(`Could not find symbol: ${expression.token.value}`);
	}
	switch (symbol.kind) {
		case SymbolKind.Field:
			return [push("this", symbol.index)];
		case SymbolKind.Argument: {
			const index = symbol.index + Number(isMethodBody);
			return [push(symbol.kind, index)];
		}
		case SymbolKind.Local:
		case SymbolKind.Static:
			return [push(symbol.kind, symbol.index)];
		default:
			throw new Error(`Unsupported symbol kind: ${symbol.kind}`);
	}
};

const generateExpression = (
	expression: Expression,
	symbols: readonly SymbolTableEntry[],
	className: string,
	isMethodBody: boolean
): readonly string[] => {
	switch (expression.subtype) {
		case "arrayElementAccess":
			return generateArrayElementAccessExpression(
				expression,
				symbols,
				className,
				isMethodBody
			);
		case "binaryOperator":
			return generateBinaryOperatorExpression(
				expression,
				symbols,
				className,
				isMethodBody
			);
		case "constant":
			return generateConstantExpression(expression);
		case "functionCall":
			return generateFunctionCallExpression(
				expression,
				symbols,
				className,
				isMethodBody
			);
		case "unaryOperator":
			return generateUnaryOperatorExpression(
				expression,
				symbols,
				className,
				isMethodBody
			);
		case "variable":
			return generateVariableExpression(expression, symbols, isMethodBody);
	}
};

const generateDoStatement = (
	statement: DoStatement,
	symbols: readonly SymbolTableEntry[],
	className: string,
	isMethodBody: boolean
): readonly string[] => {
	return [
		...generateExpression(
			statement.expression,
			symbols,
			className,
			isMethodBody
		),
		pop("temp", 0),
	];
};

const generateIfElseStatement = (
	{ condition, ifBody, elseBody }: IfElseStatement,
	symbols: readonly SymbolTableEntry[],
	className: string,
	isMethodBody: boolean
): readonly string[] => {
	const i = randomBytes(8).toString("hex");
	const ifTrueLabel = `IF_TRUE${i}`;
	const ifFalseLabel = `IF_FALSE${i}`;
	const ifEndLabel = `IF_END${i}`;
	const elseBlock =
		elseBody === null
			? [label(ifFalseLabel)]
			: [
					goto(ifEndLabel),
					label(ifFalseLabel),
					...elseBody.flatMap((statement) =>
						generateStatement(statement, symbols, className, isMethodBody)
					),
					label(ifEndLabel),
			  ];
	return [
		...generateExpression(condition, symbols, className, isMethodBody),
		ifGoto(ifTrueLabel),
		goto(ifFalseLabel),
		label(ifTrueLabel),
		...ifBody.flatMap((statement) =>
			generateStatement(statement, symbols, className, isMethodBody)
		),
		...elseBlock,
	];
};

const generateLetStatement = (
	{ expression, target }: LetStatement,
	symbols: readonly SymbolTableEntry[],
	className: string,
	isMethodBody: boolean
): readonly string[] => {
	switch (target.type) {
		case "identifier": {
			const symbol = symbols.find((s) => s.name === target.token.value);
			if (!symbol) {
				throw new Error("Unsupported array index assignment");
			}
			const generatedExpression = generateExpression(
				expression,
				symbols,
				className,
				isMethodBody
			);
			switch (symbol.kind) {
				case SymbolKind.Field: {
					return [...generatedExpression, pop("this", symbol.index)];
				}
				case SymbolKind.Argument:
				case SymbolKind.Local:
				case SymbolKind.Static:
					return [...generatedExpression, pop(symbol.kind, symbol.index)];
				default:
					throw new Error(`Unsupported symbol kind: ${symbol.kind}`);
			}
		}
		case "arrayElement":
			const { name, index } = target.expression;
			const symbol = symbols.find((s) => s.name === name.value);
			if (!symbol) {
				throw new Error("Unsupported array index assignment");
			}
			const arrayIndex = generateExpression(
				index,
				symbols,
				className,
				isMethodBody
			);
			return [
				...arrayIndex,
				push(
					symbol.kind === SymbolKind.Field ? "this" : symbol.kind,
					symbol.index
				),
				add(),
				...generateExpression(expression, symbols, className, isMethodBody),
				pop("temp", 0),
				pop("pointer", 1),
				push("temp", 0),
				pop("that", 0),
			];
	}
};

const generateReturnStatement = (
	{ value }: ReturnStatement,
	symbols: readonly SymbolTableEntry[],
	className: string,
	isMethodBody: boolean
): readonly string[] => {
	const returnValue =
		value === null
			? [push("constant", 0)]
			: generateExpression(value, symbols, className, isMethodBody);
	return [...returnValue, ret()];
};

const generateWhileStatement = (
	{ condition, body }: WhileStatement,
	symbols: readonly SymbolTableEntry[],
	className: string,
	isMethodBody: boolean
): readonly string[] => {
	const i = randomBytes(8).toString("hex");
	const startLabel = `WHILE_EXP${i}`;
	const endLabel = `WHILE_END${i}`;
	return [
		label(startLabel),
		...generateExpression(condition, symbols, className, isMethodBody),
		not(),
		ifGoto(endLabel),
		...body.flatMap((statement) =>
			generateStatement(statement, symbols, className, isMethodBody)
		),
		goto(startLabel),
		label(endLabel),
	];
};

const generateVarStatement = (): readonly string[] => [];

const generateStatement = (
	statement: Statement,
	symbols: readonly SymbolTableEntry[],
	className: string,
	isMethodBody: boolean
): readonly string[] => {
	switch (statement.type) {
		case "doStatement":
			return generateDoStatement(statement, symbols, className, isMethodBody);
		case "ifElseStatement":
			return generateIfElseStatement(
				statement,
				symbols,
				className,
				isMethodBody
			);
		case "letStatement":
			return generateLetStatement(statement, symbols, className, isMethodBody);
		case "returnStatement":
			return generateReturnStatement(
				statement,
				symbols,
				className,
				isMethodBody
			);
		case "varStatement":
			return generateVarStatement();
		case "whileStatement":
			return generateWhileStatement(
				statement,
				symbols,
				className,
				isMethodBody
			);
		default:
			throw new Error(`Unsupported statement type: ${statement.type}`);
	}
};

const generateConstructorBoilerplate = (
	classSymbols: readonly SymbolTableEntry[]
): readonly string[] => {
	const nFields = classSymbols.filter(
		(symbol) => symbol.kind === SymbolKind.Field
	).length;
	return [
		push("constant", nFields),
		call("Memory", "alloc", 1),
		pop("pointer", 0),
	];
};

const generateMethodBoilerplate = (): readonly string[] => [
	push("argument", 0),
	pop("pointer", 0),
];

const generateRoutineDeclaration = (
	declaration: RoutineDeclaration,
	classSymbols: readonly SymbolTableEntry[],
	className: string
): readonly string[] => {
	const body = declaration.body.flatMap((statement) =>
		generateStatement(
			statement,
			[...classSymbols, ...declaration.symbols],
			className,
			declaration.routineType === RoutineType.Method
		)
	);

	const nLocals = declaration.symbols.reduce<number>(
		(n, symbol) => n + Number(symbol.kind === "local"),
		0
	);

	const routineBoilerplate =
		declaration.routineType === RoutineType.Constructor
			? generateConstructorBoilerplate(classSymbols)
			: declaration.routineType === RoutineType.Method
			? generateMethodBoilerplate()
			: [];
	return [
		func(className, declaration.name, nLocals),
		...routineBoilerplate,
		...body,
	];
};

const generateDeclaration = (
	declaration: Declaration,
	classSymbols: readonly SymbolTableEntry[],
	className: string
): readonly string[] => {
	switch (declaration.type) {
		case "propertyDeclaration":
			return [];
		case "routineDeclaration":
			return generateRoutineDeclaration(declaration, classSymbols, className);
	}
};

export const generate = ({ body, name, symbols }: Ast): readonly string[] =>
	body.flatMap((declaration) =>
		generateDeclaration(declaration, symbols, name)
	);
