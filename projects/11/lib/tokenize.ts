import {
	Keyword,
	Symb,
	singleLineCommentStart,
	singleLineCommentEnd,
	multiLineCommentStart,
	multiLineCommentEnd,
	whitespaces,
	intRegex,
	stringDelimiter,
} from "./consts";

export const enum TokenType {
	Symbol = "symbol",
	Keyword = "keyword",
	Identifier = "identifier",
	IntegerConstant = "integerConstant",
	StringConstant = "stringConstant",
}

export interface Token {
	readonly type: TokenType;
	readonly value: string;
}

const enum Mode {
	Default = "default",
	SingleLineComment = "singleLineComment",
	MultiLineComment = "multiLineComment",
	String = "string",
}

interface Accumulator {
	readonly mode: Mode;
	readonly tokens: readonly Token[];
	readonly remainder: string;
}

const tokenizeCommentMode =
	(
		mode: Mode,
		/** Assumed to be two characters */
		end: string
	) =>
	({ tokens, remainder }: Accumulator, char: string): Accumulator => {
		// Are we ending the comment?
		if (
			remainder.slice(-1) + char === end ||
			(end === singleLineCommentEnd && char === "\n") // TODO: Handle different line endings more elegantly
		) {
			return {
				// Go back to default mode
				mode: Mode.Default,
				// No tokens to add
				tokens,
				// Nothing to remember
				remainder: "",
			};
		}
		return {
			// Continue in the current mode
			mode,
			// No tokens to add
			tokens,
			// Need to remember one character assuming the comment end length is always 2
			remainder: char === end[0] ? char : "",
		};
	};

const tokenizeSingleLineCommentMode = tokenizeCommentMode(
	Mode.SingleLineComment,
	singleLineCommentEnd
);
const tokenizeMultiLineCommentMode = tokenizeCommentMode(
	Mode.MultiLineComment,
	multiLineCommentEnd
);

const tokenizeStringMode = (
	{ tokens, remainder }: Accumulator,
	char: string
): Accumulator => {
	// Are we ending the string?
	if (char === stringDelimiter) {
		return {
			// Go back to the default mode
			mode: Mode.Default,
			// Add the string token
			tokens: [
				...tokens,
				{
					type: TokenType.StringConstant,
					value: remainder,
				},
			],
			// Nothing to remember
			remainder: "",
		};
	}
	return {
		// Continue in the current mode
		mode: Mode.String,
		// No tokens to add yet
		tokens,
		// Add the character to what's remembered
		remainder: remainder + char,
	};
};

const tokenizeRemainder = (remainder: string): readonly Token[] => {
	const trimmed = remainder.trim();
	if (!trimmed) {
		return [];
	}
	if (
		Object.values(Symb).some(
			(symbol) => symbol.toString() === trimmed.slice(-1)
		)
	) {
		const isTwoCharacterSymbol = [
			Symb.NotEquals,
			Symb.GreaterThanOrEqual,
			Symb.LessThanOrEqual,
		].some((symbol) => remainder.endsWith(symbol.toString()));
		const i = isTwoCharacterSymbol ? -2 : -1;
		return [
			...tokenizeRemainder(trimmed.slice(0, i)),
			{
				type: TokenType.Symbol,
				value: trimmed.slice(i),
			},
		];
	}
	if (
		Object.values(Keyword).some((keyword) => keyword.toString() === trimmed)
	) {
		return [
			{
				type: TokenType.Keyword,
				value: trimmed,
			},
		];
	}
	if (intRegex.test(trimmed)) {
		return [
			{
				type: TokenType.IntegerConstant,
				value: trimmed,
			},
		];
	}
	return [
		{
			type: TokenType.Identifier,
			value: trimmed,
		},
	];
};

const tokenizeDefaultMode = (
	{ tokens, remainder }: Accumulator,
	char: string
): Accumulator => {
	// Are we starting a single line comment?
	if (remainder.slice(-1) + char === singleLineCommentStart) {
		return {
			// Enter single line comment mode
			mode: Mode.SingleLineComment,
			// Tokenize the remainder up until the comment characters
			tokens: [...tokens, ...tokenizeRemainder(remainder.slice(0, -1))],
			// We don't need to remember anything
			remainder: "",
		};
	}
	// Are we starting a multi line comment?
	if (remainder.slice(-1) + char === multiLineCommentStart) {
		return {
			// Enter multi line comment mode
			mode: Mode.MultiLineComment,
			// Tokenize the remainder up until the comment characters
			tokens: [...tokens, ...tokenizeRemainder(remainder.slice(0, -1))],
			// We don't need to remember anything
			remainder: "",
		};
	}
	// Are we starting a string?
	if (char === stringDelimiter) {
		return {
			// Enter string mode
			mode: Mode.String,
			// Tokenize the remainder up until the string delimiter
			tokens: [...tokens, ...tokenizeRemainder(remainder)],
			// We don't need to remember anything
			remainder: "",
		};
	}
	// Did we reach a whitespace char?
	if (whitespaces.includes(remainder.slice(-1))) {
		return {
			// Stay in no comment mode
			mode: Mode.Default,
			// Tokenize everything we're currently remembering
			tokens: [...tokens, ...tokenizeRemainder(remainder)],
			// Remember the next character
			remainder: char,
		};
	}
	// Did we reach a symbol?
	if (
		Object.values(Symb).some(
			(symbol) => symbol.toString() === remainder.slice(-1)
		)
	) {
		const lastToken = tokens[tokens.length - 1] ?? null;
		const isTwoCharacterSymbol =
			remainder.endsWith(Symb.Equals) &&
			lastToken !== null &&
			[Symb.GreaterThan, Symb.LessThan].some(
				(symbol) => symbol.toString() === lastToken.value
			);
		const newTokens = isTwoCharacterSymbol
			? [
					...tokens.slice(0, -1),
					...tokenizeRemainder(
						`${remainder.slice(0, -1)}${lastToken.value}${remainder.slice(-1)}`
					),
			  ]
			: [...tokens, ...tokenizeRemainder(remainder)];
		return {
			// Stay in no comment mode
			mode: Mode.Default,
			// Tokenize everything we're currently remembering
			tokens: newTokens,
			// Remember the next character
			remainder: char,
		};
	}
	return {
		// Stay in no comment mode
		mode: Mode.Default,
		// No new tokens to add
		tokens,
		// Remember the new character as well as whatever we were remembering already
		remainder: remainder + char,
	};
};

const reduceCharsToTokens = (
	accumulator: Accumulator,
	char: string
): Accumulator => {
	switch (accumulator.mode) {
		case Mode.Default:
			return tokenizeDefaultMode(accumulator, char);
		case Mode.SingleLineComment:
			return tokenizeSingleLineCommentMode(accumulator, char);
		case Mode.MultiLineComment:
			return tokenizeMultiLineCommentMode(accumulator, char);
		case Mode.String:
			return tokenizeStringMode(accumulator, char);
		default:
			throw new Error(`${accumulator.mode} mode not supported`);
	}
};

export const tokenize = (contents: string): readonly Token[] => {
	const { tokens } = Array.from(contents).reduce<Accumulator>(
		reduceCharsToTokens,
		{
			mode: Mode.Default,
			tokens: [],
			remainder: "",
		}
	);
	return tokens;
};
