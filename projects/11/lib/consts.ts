export const singleLineCommentStart = "//";
export const singleLineCommentEnd = "\r\n";
export const multiLineCommentStart = "/*";
export const multiLineCommentEnd = "*/";
export const stringDelimiter = '"';

export const whitespaces = [" ", "\r", "\n"];

export enum Symb {
	OpenParenthesis = "(",
	CloseParenthesis = ")",
	OpenCurlyBracket = "{",
	CloseCurlyBracket = "}",
	OpenSquareBracket = "[",
	CloseSquareBracket = "]",
	Semicolon = ";",
	Comma = ",",
	Period = ".",
	Equals = "=",
	Not = "~",
	And = "&",
	Or = "|",
	LessThan = "<",
	GreaterThan = ">",
	Plus = "+",
	Minus = "-",
	Asterisk = "*",
	ForwardSlash = "/",
}

export enum Keyword {
	Class = "class",
	Field = "field",
	Static = "static",
	Constructor = "constructor",
	Method = "method",
	This = "this",
	Var = "var",
	Let = "let",
	Function = "function",
	Return = "return",
	Do = "do",
	While = "while",
	If = "if",
	Else = "else",
	Void = "void",
	Boolean = "boolean",
	Int = "int",
	Char = "char",
	Null = "null",
	True = "true",
	False = "false",
}

export const intRegex = /^[1-9][0-9]*|0$/;
