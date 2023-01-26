import { Keyword, Symb } from "./consts";
import { Token, TokenType } from "./tokenize";

type OpenBracket =
	| Symb.OpenCurlyBracket
	| Symb.OpenParenthesis
	| Symb.OpenSquareBracket;

const matchingBrackets: Readonly<Record<OpenBracket, Symb>> = {
	[Symb.OpenCurlyBracket]: Symb.CloseCurlyBracket,
	[Symb.OpenParenthesis]: Symb.CloseParenthesis,
	[Symb.OpenSquareBracket]: Symb.CloseSquareBracket,
};

const findClosingIndex = (tokens: readonly Token[]): number => {
	const openingToken = tokens[0];
	if (
		openingToken.type !== TokenType.Symbol ||
		!(
			[
				Symb.OpenCurlyBracket,
				Symb.OpenParenthesis,
				Symb.OpenSquareBracket,
			] as readonly OpenBracket[]
		).includes(openingToken.value as OpenBracket)
	) {
		throw new Error(`Cannot find closing index for token: ${tokens[0]}`);
	}

	let depth = 1;
	for (let i = 1; i < tokens.length; ++i) {
		const token = tokens[i];
		if (token.type === TokenType.Symbol && token.value === openingToken.value) {
			++depth;
		} else if (
			token.type === TokenType.Symbol &&
			token.value === matchingBrackets[openingToken.value as OpenBracket]
		) {
			--depth;
			if (depth === 0) {
				return i;
			}
		}
	}

	return -1;
};

export type UnaryOperator = Symb.Not | Symb.Minus;

interface UnaryOperatorToken extends Token {
	readonly type: TokenType.Symbol;
	readonly value: UnaryOperator;
}

const isUnaryOperatorToken = (token: Token): token is UnaryOperatorToken =>
	token.type === TokenType.Symbol &&
	[Symb.Not, Symb.Minus]
		.map((symbol) => symbol.toString())
		.includes(token.value);

export type BinaryOperator =
	| Symb.Equals
	| Symb.NotEquals
	| Symb.And
	| Symb.Or
	| Symb.LessThan
	| Symb.LessThanOrEqual
	| Symb.GreaterThan
	| Symb.GreaterThanOrEqual
	| Symb.Plus
	| Symb.Minus
	| Symb.Asterisk
	| Symb.ForwardSlash;

interface BinaryOperatorToken extends Token {
	readonly type: TokenType.Symbol;
	readonly value: BinaryOperator;
}

const isBinaryOperatorToken = (token: Token): token is BinaryOperatorToken =>
	token.type === TokenType.Symbol &&
	[
		Symb.Equals,
		Symb.NotEquals,
		Symb.And,
		Symb.Or,
		Symb.LessThan,
		Symb.LessThanOrEqual,
		Symb.GreaterThan,
		Symb.GreaterThanOrEqual,
		Symb.Plus,
		Symb.Minus,
		Symb.Asterisk,
		Symb.ForwardSlash,
	]
		.map((symbol) => symbol.toString())
		.includes(token.value);

export interface ConstantExpression {
	readonly type: "expression";
	readonly subtype: "constant";
	readonly token: Token;
}

export interface VariableExpression {
	readonly type: "expression";
	readonly subtype: "variable";
	readonly token: Token;
}

export interface FunctionCallExpression {
	readonly type: "expression";
	readonly subtype: "functionCall";
	readonly namespace: Token | null;
	readonly name: Token;
	readonly args: readonly Expression[];
}

export interface UnaryOperatorExpression {
	readonly type: "expression";
	readonly subtype: "unaryOperator";
	readonly operator: UnaryOperator;
	readonly subexpression: Expression;
}

export interface BinaryOperatorExpression {
	readonly type: "expression";
	readonly subtype: "binaryOperator";
	readonly operator: BinaryOperator;
	readonly left: Expression;
	readonly right: Expression;
}

export interface ArrayElementAccessExpression {
	readonly type: "expression";
	readonly subtype: "arrayElementAccess";
	readonly name: Token;
	readonly index: Expression;
}

export type Expression =
	| ConstantExpression
	| VariableExpression
	| FunctionCallExpression
	| UnaryOperatorExpression
	| BinaryOperatorExpression
	| ArrayElementAccessExpression;

export interface DoStatement {
	readonly type: "doStatement";
	readonly expression: FunctionCallExpression;
}

export interface ReturnStatement {
	readonly type: "returnStatement";
	readonly value: Expression | null;
}

export interface VarStatement {
	readonly type: "varStatement";
	readonly varNames: readonly Token[];
	readonly varType: Token;
}

export interface LetStatement {
	readonly type: "letStatement";
	readonly target:
		| {
				readonly type: "identifier";
				readonly token: Token;
		  }
		| {
				readonly type: "arrayElement";
				readonly expression: ArrayElementAccessExpression;
		  };
	readonly expression: Expression;
}

export interface WhileStatement {
	readonly type: "whileStatement";
	readonly condition: Expression;
	readonly body: readonly Statement[];
}

export interface IfStatement {
	readonly type: "ifStatement";
	readonly condition: Expression;
	readonly body: readonly Statement[];
}

export interface ElseStatement {
	readonly type: "elseStatement";
	readonly body: readonly Statement[];
}

export interface IfElseStatement {
	readonly type: "ifElseStatement";
	readonly condition: Expression;
	readonly ifBody: readonly Statement[];
	readonly elseBody: readonly Statement[] | null;
}

export type Statement =
	| DoStatement
	| ReturnStatement
	| VarStatement
	| LetStatement
	| WhileStatement
	| IfStatement
	| ElseStatement
	| IfElseStatement;

type ReturnType = Token;
type ParameterType = Token;

export interface Parameter {
	readonly type: "parameter";
	readonly name: string;
	readonly parameterType: ParameterType;
}

export enum RoutineType {
	Constructor = "constructor",
	Function = "function",
	Method = "method",
}

export interface RoutineDeclaration {
	readonly type: "routineDeclaration";
	readonly routineType: RoutineType;
	readonly name: string;
	readonly returnType: ReturnType;
	readonly parameters: readonly Parameter[];
	readonly body: readonly Statement[];
	readonly symbols: readonly SymbolTableEntry[];
}

type PropertySubtype = SymbolKind.Field | SymbolKind.Static;

export interface PropertyDeclaration {
	readonly type: "propertyDeclaration";
	readonly subtype: PropertySubtype;
	readonly propertyNames: readonly Token[];
	readonly propertyType: Token;
}

export type Declaration = PropertyDeclaration | RoutineDeclaration;

type ClassBody = readonly Declaration[];

export enum SymbolKind {
	Field = "field",
	Static = "static",
	Argument = "argument",
	Local = "local",
}

export interface SymbolTableEntry {
	readonly name: string;
	readonly type: string;
	readonly kind: SymbolKind;
	readonly index: number;
}

interface Class {
	readonly type: "class";
	readonly name: string;
	readonly body: ClassBody;
	readonly symbols: readonly SymbolTableEntry[];
}

export type Ast = Class;

type StatementKeyword =
	| Keyword.Do
	| Keyword.Let
	| Keyword.Return
	| Keyword.Var
	| Keyword.While
	| Keyword.If
	| Keyword.Else;

const isStatementKeyword = (
	tokenValue: string
): tokenValue is StatementKeyword =>
	(
		[
			Keyword.Do,
			Keyword.Let,
			Keyword.Return,
			Keyword.Var,
			Keyword.While,
			Keyword.If,
			Keyword.Else,
		] as readonly string[]
	).includes(tokenValue);

const parseConstantExpression = (
	tokens: readonly Token[]
): ConstantExpression => {
	return {
		type: "expression",
		subtype: "constant",
		token: tokens[0],
	};
};

const parseVariableExpression = (
	tokens: readonly Token[]
): VariableExpression => {
	return {
		type: "expression",
		subtype: "variable",
		token: tokens[0],
	};
};

const parseFunctionCallExpression = (
	tokens: readonly Token[]
): FunctionCallExpression => {
	const nameIndex =
		tokens[1].type === TokenType.Symbol && tokens[1].value === Symb.Period
			? 2
			: 0;
	const namespace = nameIndex === 2 ? tokens[0] : null;
	return {
		type: "expression",
		subtype: "functionCall",
		namespace,
		name: tokens[nameIndex],
		args: parseArgs(tokens.slice(nameIndex + 2, -1)),
	};
};

const parseUnaryOperatorExpression = (
	tokens: readonly Token[]
): UnaryOperatorExpression => {
	return {
		type: "expression",
		subtype: "unaryOperator",
		operator: tokens[0].value as UnaryOperator,
		subexpression: parseExpression(tokens.slice(1)),
	};
};

const parseArrayElementAccessExpression = (
	tokens: readonly Token[]
): ArrayElementAccessExpression => {
	return {
		type: "expression",
		subtype: "arrayElementAccess",
		name: tokens[0],
		index: parseExpression(tokens.slice(2, -1)),
	};
};

const trimParentheses = (tokens: readonly Token[]): readonly Token[] => {
	if (
		tokens[0].value !== Symb.OpenParenthesis ||
		tokens[tokens.length - 1].value !== Symb.CloseParenthesis
	) {
		return tokens;
	}
	let depth = 1;
	for (let i = 1; i < tokens.length; ++i) {
		if (tokens[i].value === Symb.OpenParenthesis) {
			++depth;
		} else if (tokens[i].value === Symb.CloseParenthesis) {
			--depth;
			if (depth === 0 && i !== tokens.length - 1) {
				return tokens;
			}
		}
	}
	return trimParentheses(tokens.slice(1, -1));
};

const findOutermostBinaryOperatorIndex = (tokens: readonly Token[]): number => {
	let brackets: readonly string[] = [];
	for (let i = 0; i < tokens.length; ++i) {
		const token = tokens[i];
		if (
			(
				[Symb.OpenParenthesis, Symb.OpenSquareBracket] as readonly string[]
			).includes(token.value)
		) {
			brackets = [...brackets, token.value];
			continue;
		} else if (token.value === Symb.CloseParenthesis) {
			if (brackets[brackets.length - 1] !== Symb.OpenParenthesis) {
				throw new Error("Mismatched brackets");
			}
			brackets = brackets.slice(0, -1);
		} else if (token.value === Symb.CloseSquareBracket) {
			if (brackets[brackets.length - 1] !== Symb.OpenSquareBracket) {
				throw new Error("Mismatched brackets");
			}
			brackets = brackets.slice(0, -1);
		}
		if (brackets.length === 0 && i !== 0 && isBinaryOperatorToken(token)) {
			return i;
		}
	}
	return -1;
};

const parseBinaryOperatorExpression = (
	tokens: readonly Token[]
): BinaryOperatorExpression => {
	const binaryOperatorIndex = findOutermostBinaryOperatorIndex(tokens);
	return {
		type: "expression",
		subtype: "binaryOperator",
		operator: tokens[binaryOperatorIndex].value as BinaryOperator,
		left: parseExpression(tokens.slice(0, binaryOperatorIndex)),
		right: parseExpression(tokens.slice(binaryOperatorIndex + 1)),
	};
};

const parseExpression = (tokens: readonly Token[]): Expression => {
	const trimmedTokens = trimParentheses(tokens);
	const binaryOperatorIndex = findOutermostBinaryOperatorIndex(trimmedTokens);
	if (binaryOperatorIndex !== -1) {
		return parseBinaryOperatorExpression(trimmedTokens);
	}
	if (isUnaryOperatorToken(trimmedTokens[0])) {
		return parseUnaryOperatorExpression(trimmedTokens);
	}
	if (trimmedTokens.length > 1) {
		return trimmedTokens[1].value === Symb.OpenSquareBracket
			? parseArrayElementAccessExpression(trimmedTokens)
			: parseFunctionCallExpression(trimmedTokens);
	}
	if (
		trimmedTokens[0].type === TokenType.IntegerConstant ||
		trimmedTokens[0].type === TokenType.StringConstant ||
		(trimmedTokens[0].type === TokenType.Keyword &&
			[Keyword.Null, Keyword.True, Keyword.False, Keyword.This].includes(
				trimmedTokens[0].value as Keyword
			))
	) {
		return parseConstantExpression(trimmedTokens);
	}
	if (trimmedTokens[0].type === TokenType.Identifier) {
		return parseVariableExpression(trimmedTokens);
	}
	throw new Error("Could not parse expression");
};

const splitArgs = (tokens: readonly Token[]): readonly (readonly Token[])[] => {
	return tokens.length === 0
		? []
		: tokens.reduce(
				(args: readonly Token[][], token) => {
					const finishedArgs = args.slice(0, -1);
					const currentArg = args[args.length - 1];
					return token.type === TokenType.Symbol && token.value === Symb.Comma
						? [...finishedArgs, currentArg, []]
						: [...finishedArgs, [...currentArg, token]];
				},
				[[]]
		  );
};

const parseArgs = (tokens: readonly Token[]): readonly Expression[] => {
	const args = splitArgs(tokens);
	return args.map(parseExpression);
};

const parseDoStatement = (tokens: readonly Token[]): DoStatement => {
	return {
		type: "doStatement",
		expression: parseFunctionCallExpression(tokens),
	};
};

const parseReturnStatement = (tokens: readonly Token[]): ReturnStatement => ({
	type: "returnStatement",
	value: tokens.length > 0 ? parseExpression(tokens) : null,
});

const parseVarStatement = (tokens: readonly Token[]): VarStatement => {
	const varType = tokens[0];
	const varNames = tokens
		.slice(1)
		.filter(
			(token) => token.type !== TokenType.Symbol && token.value !== Symb.Comma
		);
	return {
		type: "varStatement",
		varNames,
		varType,
	};
};

const parseLetStatement = (tokens: readonly Token[]): LetStatement => {
	if (tokens[1].type === TokenType.Symbol && tokens[1].value === Symb.Equals) {
		return {
			type: "letStatement",
			target: {
				type: "identifier",
				token: tokens[0],
			},
			expression: parseExpression(tokens.slice(2)),
		};
	}
	const equalsIndex = tokens.reduce<{
		readonly index: number;
		readonly depth: number;
	}>(
		({ index, depth }, token, i) => {
			if (
				index !== -1 ||
				token.type !== TokenType.Symbol ||
				!(
					[
						Symb.OpenSquareBracket,
						Symb.CloseSquareBracket,
						Symb.Equals,
					] as readonly string[]
				).includes(token.value)
			) {
				return {
					index,
					depth,
				};
			}
			if (token.value === Symb.OpenSquareBracket) {
				return {
					index,
					depth: depth + 1,
				};
			}
			if (token.value === Symb.CloseSquareBracket) {
				return {
					index,
					depth: depth - 1,
				};
			}
			if (token.value === Symb.Equals && depth === 0) {
				return {
					index: i,
					depth,
				};
			}
			return {
				index,
				depth,
			};
		},
		{
			index: -1,
			depth: 0,
		}
	).index;
	if (equalsIndex === -1) {
		throw new Error("Could not parse let statement");
	}
	const targetExpression = parseExpression(tokens.slice(0, equalsIndex));
	if (targetExpression.subtype !== "arrayElementAccess") {
		throw new Error(
			`Invalid array element access expression: ${targetExpression}`
		);
	}
	const result = {
		type: "letStatement" as const,
		target: {
			type: "arrayElement" as const,
			expression: targetExpression,
		},
		expression: parseExpression(tokens.slice(equalsIndex + 1)),
	};
	return result;
};

const splitWhileStatement = (
	tokens: readonly Token[]
): readonly [readonly Token[], readonly Token[]] => {
	const closeParenthesisIndex = findClosingIndex(tokens);
	const condition = tokens.slice(1, closeParenthesisIndex);
	const body = tokens.slice(closeParenthesisIndex + 2, -1);
	return [condition, body];
};

const parseWhileStatement = (tokens: readonly Token[]): WhileStatement => {
	const [condition, body] = splitWhileStatement(tokens);
	const result = {
		type: "whileStatement" as const,
		condition: parseExpression(condition),
		body: parseBlock(body),
	};
	return result;
};

const splitIfStatement = (
	tokens: readonly Token[]
): readonly [readonly Token[], readonly Token[]] => {
	const closeParenthesisIndex = findClosingIndex(tokens);
	const condition = tokens.slice(1, closeParenthesisIndex);
	const body = tokens.slice(closeParenthesisIndex + 2, -1);
	return [condition, body];
};

const parseIfStatement = (tokens: readonly Token[]): IfStatement => {
	const [condition, body] = splitIfStatement(tokens);
	const result = {
		type: "ifStatement" as const,
		condition: parseExpression(condition),
		body: parseBlock(body),
	};
	return result;
};

const parseElseStatement = (tokens: readonly Token[]): ElseStatement => ({
	type: "elseStatement" as const,
	body: parseBlock(tokens.slice(1, -1)),
});

const parseStatement = ([token, ...tokens]: readonly Token[]): Statement => {
	switch (token.value) {
		case Keyword.Do:
			return parseDoStatement(tokens);
		case Keyword.Return:
			return parseReturnStatement(tokens);
		case Keyword.Var:
			return parseVarStatement(tokens);
		case Keyword.Let:
			return parseLetStatement(tokens);
		case Keyword.While:
			return parseWhileStatement(tokens);
		case Keyword.If:
			return parseIfStatement(tokens);
		case Keyword.Else:
			return parseElseStatement(tokens);
		default:
			throw new Error(`Unknown statement: ${token.value}`);
	}
};

const splitStatements = (
	tokens: readonly Token[]
): readonly (readonly Token[])[] =>
	tokens
		.reduce<{
			readonly statementType: StatementKeyword | null;
			readonly depth: number;
			readonly statements: readonly (readonly Token[])[];
		}>(
			(
				{ statementType, depth, statements },
				token: Token
			): {
				readonly statementType: StatementKeyword | null;
				readonly depth: number;
				readonly statements: readonly (readonly Token[])[];
			} => {
				const finishedStatements = statements.slice(0, -1);
				const currentStatement = statements[statements.length - 1];
				const currentStatementType = statementType ?? token.value;
				if (!isStatementKeyword(currentStatementType)) {
					throw new Error(`Unknown statement type: ${currentStatementType}`);
				}
				if (
					[Keyword.While, Keyword.If, Keyword.Else].includes(
						currentStatementType
					)
				) {
					const newDepth =
						token.type === TokenType.Symbol &&
						token.value === Symb.OpenCurlyBracket
							? depth + 1
							: token.type === TokenType.Symbol &&
							  token.value === Symb.CloseCurlyBracket
							? depth - 1
							: depth;
					const isDone =
						token.type === TokenType.Symbol &&
						token.value === Symb.CloseCurlyBracket &&
						newDepth === 0;
					return {
						statementType: isDone ? null : currentStatementType,
						depth: newDepth,
						statements: isDone
							? [...finishedStatements, [...currentStatement, token], []]
							: [...finishedStatements, [...currentStatement, token]],
					};
				}
				const isDone =
					token.type === TokenType.Symbol && token.value === Symb.Semicolon;
				return {
					statementType: isDone ? null : currentStatementType,
					depth: 0,
					statements: isDone
						? [...finishedStatements, currentStatement, []]
						: [...finishedStatements, [...currentStatement, token]],
				};
			},
			{ statementType: null, depth: 0, statements: [[]] }
		)
		.statements.filter((statement) => statement.length !== 0);

const splitParameters = (
	tokens: readonly Token[]
): readonly (readonly Token[])[] => {
	const parameters = tokens.reduce(
		(p: readonly (readonly Token[])[], token) =>
			token.type === TokenType.Symbol && token.value === Symb.Comma
				? [...p, []]
				: [...p.slice(0, -1), [...p[p.length - 1], token]],
		[[]]
	);
	return parameters.filter((p) => p.length !== 0);
};

const parseParameter = (tokens: readonly Token[]): Parameter => ({
	type: "parameter",
	name: tokens[1].value,
	parameterType: tokens[0],
});

const parseParameters = (tokens: readonly Token[]): readonly Parameter[] => {
	const parameters = splitParameters(tokens);
	return parameters.map(parseParameter);
};

const parseBlock = (tokens: readonly Token[]): readonly Statement[] => {
	const statements = splitStatements(tokens);
	return statements.map(parseStatement);
};

const splitFunctionParametersFromBody = (
	tokens: readonly Token[]
): readonly [readonly Token[], readonly Token[]] => {
	const closeParenthesisIndex = tokens.findIndex(
		(token) =>
			token.type === TokenType.Symbol && token.value === Symb.CloseParenthesis
	);
	const parameters = tokens.slice(1, closeParenthesisIndex);
	const body = tokens.slice(closeParenthesisIndex + 2, -1);
	return [parameters, body];
};

type RoutineTypeKeyword =
	| Keyword.Constructor
	| Keyword.Function
	| Keyword.Method;

const routineTypes: Readonly<Record<RoutineTypeKeyword, RoutineType>> = {
	[Keyword.Constructor]: RoutineType.Constructor,
	[Keyword.Function]: RoutineType.Function,
	[Keyword.Method]: RoutineType.Method,
};

const splitRoutineDeclaration = (
	tokens: readonly Token[]
): readonly [RoutineType, Token, Token, readonly Token[], readonly Token[]] => {
	const routineType = routineTypes[tokens[0].value as RoutineTypeKeyword];
	const returnType = tokens[1];
	const name = tokens[2];
	const [parameters, body] = splitFunctionParametersFromBody(tokens.slice(3));
	return [routineType, returnType, name, parameters, body];
};

const parseRoutineDeclaration = (
	tokens: readonly Token[]
): RoutineDeclaration => {
	const [routineType, returnType, name, parameters, body] =
		splitRoutineDeclaration(tokens);
	return {
		type: "routineDeclaration",
		routineType,
		name: name.value,
		returnType: returnType,
		parameters: parseParameters(parameters),
		body: parseBlock(body),
		symbols: [],
	};
};

const parsePropertyDeclaration = (
	tokens: readonly Token[]
): PropertyDeclaration => {
	const propertySubtype =
		tokens[0].value === Keyword.Static ? SymbolKind.Static : SymbolKind.Field;
	const propertyType = tokens[1];
	const propertyNames = tokens
		.slice(2)
		.filter(
			(token) => token.type !== TokenType.Symbol && token.value !== Symb.Comma
		);
	return {
		type: "propertyDeclaration",
		subtype: propertySubtype,
		propertyType,
		propertyNames,
	};
};

const parseDeclaration = (tokens: readonly Token[]): Declaration =>
	[Keyword.Field, Keyword.Static].includes(tokens[0].value as Keyword)
		? parsePropertyDeclaration(tokens)
		: parseRoutineDeclaration(tokens);

const splitDeclarations = (
	tokens: readonly Token[]
): readonly (readonly Token[])[] => {
	let declarations: readonly (readonly Token[])[] = [];
	let i = 0;
	while (i < tokens.length) {
		const startToken = tokens[i];
		switch (startToken.value) {
			case Keyword.Field:
			case Keyword.Static: {
				const currentTokens = tokens.slice(i + 1);
				const semicolonIndex = currentTokens.findIndex(
					(token) => token.value === Symb.Semicolon
				);
				if (semicolonIndex === -1) {
					throw new Error("Field declaration did not terminate");
				}
				declarations = [
					...declarations,
					tokens.slice(i, i + 1 + semicolonIndex),
				];
				i += semicolonIndex + 2;
				break;
			}
			case Keyword.Constructor:
			case Keyword.Method:
			case Keyword.Function: {
				const currentTokens = tokens.slice(i + 1);
				const openIndex = currentTokens.findIndex(
					(token) => token.value === Symb.OpenCurlyBracket
				);
				if (openIndex === -1) {
					throw new Error("Could not parse declaration");
				}
				const closeIndex = findClosingIndex(currentTokens.slice(openIndex));
				if (closeIndex === -1) {
					// declarations = [...declarations, tokens.slice(i)];
					// i = tokens.length;
					// break;
					throw new Error("Declaration did not terminate");
				}
				declarations = [
					...declarations,
					tokens.slice(i, i + openIndex + 1 + closeIndex + 1),
				];
				i += openIndex + closeIndex + 2;
				break;
			}
			default:
				throw new Error(`Unknown declaration: ${startToken.value}`);
		}
	}
	return declarations;
};

const parseClassBody = (tokens: readonly Token[]): ClassBody => {
	const declarations = splitDeclarations(tokens);
	return declarations.map(parseDeclaration);
};

const splitClass = (
	tokens: readonly Token[]
): readonly [Token, readonly Token[]] => {
	const name = tokens[1];
	const body = tokens.slice(3, -1);
	return [name, body];
};

const parseClass = (tokens: readonly Token[]): Class => {
	const [name, body] = splitClass(tokens);
	return {
		type: "class",
		name: name.value,
		body: parseClassBody(body),
		symbols: [],
	};
};

const combineIfElseStatement = (
	ifElseStatement: Statement,
	elseStatement: ElseStatement
): IfElseStatement => {
	if (ifElseStatement.type !== "ifElseStatement") {
		throw new Error(
			`Cannot combine if/else statement with ${ifElseStatement.type}`
		);
	}
	return {
		...ifElseStatement,
		elseBody: elseStatement.body.reduce(combineIfElseStatements, []),
	};
};

const combineIfElseStatements = (
	statements: readonly Statement[],
	statement: Statement
): readonly Statement[] => {
	switch (statement.type) {
		case "ifStatement":
			return [
				...statements,
				{
					type: "ifElseStatement",
					condition: statement.condition,
					ifBody: statement.body.reduce(combineIfElseStatements, []),
					elseBody: null,
				},
			];
		case "whileStatement":
			return [
				...statements,
				{
					...statement,
					body: statement.body.reduce(combineIfElseStatements, []),
				},
			];
		case "elseStatement":
			return [
				...statements.slice(0, -1),
				combineIfElseStatement(statements[statements.length - 1], statement),
			];
		default:
			return [...statements, statement];
	}
};

const combineIfElse = (parsed: Ast): Ast => ({
	...parsed,
	body: parsed.body.map((declaration) =>
		declaration.type === "propertyDeclaration"
			? declaration
			: {
					...declaration,
					body: declaration.body.reduce(combineIfElseStatements, []),
			  }
	),
});

export const parse = (tokens: readonly Token[]): Ast => {
	const result = parseClass(tokens);
	return combineIfElse(result);
};
