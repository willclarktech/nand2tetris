import {
	Ast,
	Declaration,
	PropertyDeclaration,
	RoutineDeclaration,
	SymbolKind,
	Statement,
	VarStatement,
	Parameter,
} from "./parse";

const getClassSymbols = (
	declarations: PropertyDeclaration[]
): Ast["symbols"] => {
	let staticIndex = -1;
	let fieldIndex = -1;

	return declarations.flatMap((declaration) => {
		return declaration.propertyNames.map((name) => {
			if (declaration.subtype === SymbolKind.Field) {
				++fieldIndex;
			} else {
				++staticIndex;
			}
			return {
				name: name.value,
				type: declaration.propertyType.value,
				kind: declaration.subtype,
				index:
					declaration.subtype === SymbolKind.Field ? fieldIndex : staticIndex,
			};
		});
	});
};

const getRoutineLocalSymbols = (
	statements: readonly VarStatement[]
): RoutineDeclaration["symbols"] => {
	let index = -1;
	return statements.flatMap((statement) =>
		statement.varNames.map((name) => {
			return {
				name: name.value,
				type: statement.varType.value,
				kind: SymbolKind.Local,
				index: ++index,
			};
		})
	);
};

const getRoutineParameterSymbols = (
	parameters: readonly Parameter[]
): RoutineDeclaration["symbols"] => {
	return parameters.map((parameter, index) => {
		return {
			name: parameter.name,
			type: parameter.parameterType.value,
			index,
			kind: SymbolKind.Argument,
		};
	});
};

const isVarStatement = (statement: Statement): statement is VarStatement => {
	return statement.type === "varStatement";
};

const addRoutineSymbols = (
	declaration: RoutineDeclaration
): RoutineDeclaration => {
	return {
		...declaration,
		symbols: [
			...getRoutineParameterSymbols(declaration.parameters),
			...getRoutineLocalSymbols(declaration.body.filter(isVarStatement)),
		],
	};
};

const isPropertyDeclaration = (
	declaration: Declaration
): declaration is PropertyDeclaration => {
	//): declaration is PropertyDeclaration => {
	return declaration.type === "propertyDeclaration";
};

export const addSymbols = (parsed: Ast): Ast => {
	return {
		...parsed,
		symbols: getClassSymbols(parsed.body.filter(isPropertyDeclaration)),
		body: parsed.body.map((declaration) =>
			isPropertyDeclaration(declaration)
				? declaration
				: addRoutineSymbols(declaration)
		),
	};
};
