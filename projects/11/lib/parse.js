const {
	RE_CLASS,
	RE_CLASS_NAME,
	RE_CLASS_VAR_DEC,
	RE_CLOSE_CURLY_BRACE,
	RE_CLOSE_PARENTHESIS,
	RE_CLOSE_SQUARE_BRACKET,
	RE_COMMA,
	RE_DO,
	RE_ELSE,
	RE_EQUALS,
	RE_FULL_STOP,
	RE_KEYWORD_CONSTANT,
	RE_IDENTIFIER,
	RE_IF,
	RE_INTEGER_CONSTANT,
	RE_LET,
	RE_OBJECT_NAME,
	RE_OPEN_CURLY_BRACE,
	RE_OPEN_PARENTHESIS,
	RE_OPEN_SQUARE_BRACKET,
	RE_OPERATOR,
	RE_RETURN,
	RE_SEMICOLON,
	RE_STATEMENT,
	RE_STRING_CONSTANT,
	RE_STRING_CONTENTS,
	RE_SUBROUTINE_DEC,
	RE_SUBROUTINE_INDICATOR,
	RE_SUBROUTINE_NAME,
	RE_SUBROUTINE_TYPE,
	RE_TYPE,
	RE_UNARY_OPERATOR,
	RE_VAR,
	RE_VAR_NAME,
	RE_VOID,
	RE_WHILE,
} = require('./regexps')
const {
	limitRegExp,
	makeEater,
	makeNester,
	makeNestingCompiler,
	makeUnnester,
} = require('./utils')

// Assumes the chunk contains the full file. Might rewrite later if I find the
// motivation
function parse(chunk = [], encoding, callback) {
	const parsed = []
	const eat = makeEater(parsed)
	const nester = makeNester(parsed)
	const unnester = makeUnnester(parsed)
	const nest = makeNestingCompiler(nester, unnester)

	const compileSubroutineCall = tokens => {
		if (limitRegExp(RE_FULL_STOP).test(tokens[1].token)) {
			tokens = eat(tokens, RE_OBJECT_NAME)
			tokens = eat(tokens, RE_FULL_STOP)
		}

		tokens = eat(tokens, RE_SUBROUTINE_NAME)
		tokens = eat(tokens, RE_OPEN_PARENTHESIS)
		tokens = compileExpressionList(tokens)
		tokens = eat(tokens, RE_CLOSE_PARENTHESIS)

		return tokens
	}

	const compileExpressionList = nest('expressionList', tokens => {
		if (!limitRegExp(RE_CLOSE_PARENTHESIS).test(tokens[0].token)) {
			tokens = compileExpression(tokens)

			while (limitRegExp(RE_COMMA).test(tokens[0].token)) {
				tokens = eat(tokens, RE_COMMA)
				tokens = compileExpression(tokens)
			}
		}
		return tokens
	})

	const compileTerm = nest('term', tokens => {
		const firstToken = tokens[0].token
		const secondToken = tokens.length > 1 ? tokens[1].token : null

		if (limitRegExp(RE_INTEGER_CONSTANT).test(firstToken)) {
			tokens = eat(tokens, RE_INTEGER_CONSTANT)
		} else if (tokens[0].category === 'stringConstant') {
			tokens = eat(tokens, RE_STRING_CONTENTS)
		} else if (limitRegExp(RE_KEYWORD_CONSTANT).test(firstToken)) {
			tokens = eat(tokens, RE_KEYWORD_CONSTANT)
		} else if (limitRegExp(RE_UNARY_OPERATOR).test(firstToken)) {
			tokens = eat(tokens, RE_UNARY_OPERATOR)
			tokens = compileTerm(tokens)
		} else if (limitRegExp(RE_OPEN_PARENTHESIS).test(firstToken)) {
			tokens = eat(tokens, RE_OPEN_PARENTHESIS)
			tokens = compileExpression(tokens)
			tokens = eat(tokens, RE_CLOSE_PARENTHESIS)
		} else if (secondToken && limitRegExp(RE_SUBROUTINE_INDICATOR).test(secondToken)) {
			tokens = compileSubroutineCall(tokens)
		} else if (secondToken && limitRegExp(RE_OPEN_SQUARE_BRACKET).test(secondToken)) {
			tokens = eat(tokens, RE_VAR_NAME)
			tokens = eat(tokens, RE_OPEN_SQUARE_BRACKET)
			tokens = compileExpression(tokens)
			tokens = eat(tokens, RE_CLOSE_SQUARE_BRACKET)
		} else {
			tokens = eat(tokens, RE_VAR_NAME)
		}

		return tokens
	})

	const compileExpression = nest('expression', tokens => {
		tokens = compileTerm(tokens)

		if (limitRegExp(RE_OPERATOR).test(tokens[0].token)) {
			tokens = eat(tokens, RE_OPERATOR)
			tokens = compileTerm(tokens)
		}

		return tokens
	})

	const compileReturn = nest('returnStatement', tokens => {
		tokens = eat(tokens, RE_RETURN)

		if (!limitRegExp(RE_SEMICOLON).test(tokens[0].token)) {
			tokens = compileExpression(tokens)
		}

		tokens = eat(tokens, RE_SEMICOLON)

		return tokens
	})

	const compileWhile = nest('whileStatement', tokens => {
		tokens = eat(tokens, RE_WHILE)
		tokens = eat(tokens, RE_OPEN_PARENTHESIS)
		tokens = compileExpression(tokens)
		tokens = eat(tokens, RE_CLOSE_PARENTHESIS)
		tokens = eat(tokens, RE_OPEN_CURLY_BRACE)
		tokens = compileStatements(tokens)
		tokens = eat(tokens, RE_CLOSE_CURLY_BRACE)

		return tokens
	})

	const compileIf = nest('ifStatement', tokens => {
		tokens = eat(tokens, RE_IF)
		tokens = eat(tokens, RE_OPEN_PARENTHESIS)
		tokens = compileExpression(tokens)
		tokens = eat(tokens, RE_CLOSE_PARENTHESIS)
		tokens = eat(tokens, RE_OPEN_CURLY_BRACE)
		tokens = compileStatements(tokens)
		tokens = eat(tokens, RE_CLOSE_CURLY_BRACE)

		if (limitRegExp(RE_ELSE).test(tokens[0].token)) {
			tokens = eat(tokens, RE_ELSE)
			tokens = eat(tokens, RE_OPEN_CURLY_BRACE)
			tokens = compileStatements(tokens)
			tokens = eat(tokens, RE_CLOSE_CURLY_BRACE)
		}

		return tokens
	})

	const compileDo = nest('doStatement', tokens => {
		tokens = eat(tokens, RE_DO)
		tokens = compileSubroutineCall(tokens)
		tokens = eat(tokens, RE_SEMICOLON)

		return tokens
	})

	const compileLet = nest('letStatement', tokens => {
		tokens = eat(tokens, RE_LET)
		tokens = eat(tokens, RE_VAR_NAME)

		if (limitRegExp(RE_OPEN_SQUARE_BRACKET).test(tokens[0].token)) {
			tokens = eat(tokens, RE_OPEN_SQUARE_BRACKET)
			tokens = compileExpression(tokens)
			tokens = eat(tokens, RE_CLOSE_SQUARE_BRACKET)
		}

		tokens = eat(tokens, RE_EQUALS)
		tokens = compileExpression(tokens)
		tokens = eat(tokens, RE_SEMICOLON)

		return tokens
	})

	const compileStatements = nest('statements', tokens => {
		while(limitRegExp(RE_STATEMENT).test(tokens[0].token)) {
			switch (tokens[0].token) {
				case RE_LET:
					tokens = compileLet(tokens)
					break
				case RE_DO:
					tokens = compileDo(tokens)
					break
				case RE_IF:
					tokens = compileIf(tokens)
					break
				case RE_WHILE:
					tokens = compileWhile(tokens)
					break
				case RE_RETURN:
					tokens = compileReturn(tokens)
					break
				default:
					throw new Error('Statement type not recognised')
			}
		}

		return tokens
	})

	const compileVarDec = nest('varDec', tokens => {
		tokens = eat(tokens, RE_VAR)
		tokens = eat(tokens, RE_TYPE)
		tokens = eat(tokens, RE_VAR_NAME)

		while (limitRegExp(RE_COMMA).test(tokens[0].token)) {
			tokens = eat(tokens, RE_COMMA)
			tokens = eat(tokens, RE_IDENTIFIER)
		}

		tokens = eat(tokens, RE_SEMICOLON)

		return tokens
	})

	const compileSubroutineBody = nest('subroutineBody', tokens => {
		tokens = eat(tokens, RE_OPEN_CURLY_BRACE)

		while (limitRegExp(RE_VAR).test(tokens[0].token)) {
			tokens = compileVarDec(tokens)
		}

		tokens = compileStatements(tokens)
		tokens = eat(tokens, RE_CLOSE_CURLY_BRACE)

		return tokens
	})

	const compileParameterList = nest('parameterList', tokens => {
		if (limitRegExp(RE_TYPE).test(tokens[0].token)) {
			tokens = eat(tokens, RE_TYPE)
			tokens = eat(tokens, RE_VAR_NAME)

			while (limitRegExp(RE_COMMA).test(tokens[0].token)) {
				tokens = eat(tokens, RE_COMMA)
				tokens = eat(tokens, RE_TYPE)
				tokens = eat(tokens, RE_VAR_NAME)
			}
		}

		return tokens
	})

	const compileSubroutineDec = nest('subroutineDec', tokens => {
		tokens = eat(tokens, RE_SUBROUTINE_DEC)
		tokens = eat(tokens, RE_SUBROUTINE_TYPE)
		tokens = eat(tokens, RE_SUBROUTINE_NAME)
		tokens = eat(tokens, RE_OPEN_PARENTHESIS)
		tokens = compileParameterList(tokens)
		tokens = eat(tokens, RE_CLOSE_PARENTHESIS)
		tokens = compileSubroutineBody(tokens)

		return tokens
	})

	const compileClassVarDec = nest('classVarDec', tokens => {
		tokens = eat(tokens, RE_CLASS_VAR_DEC)
		tokens = eat(tokens, RE_TYPE)
		tokens = eat(tokens, RE_IDENTIFIER)

		while (limitRegExp(RE_COMMA).test(tokens[0].token)) {
			tokens = eat(tokens, RE_COMMA)
			tokens = eat(tokens, RE_IDENTIFIER)
		}

		tokens = eat(tokens, RE_SEMICOLON)

		return tokens
	})

	const compileClass = nest('class', tokens => {
		tokens = eat(tokens, RE_CLASS)
		tokens = eat(tokens, RE_CLASS_NAME)
		tokens = eat(tokens, RE_OPEN_CURLY_BRACE)

		while (limitRegExp(RE_CLASS_VAR_DEC).test(tokens[0].token)) {
			tokens = compileClassVarDec(tokens)
		}

		while (limitRegExp(RE_SUBROUTINE_DEC).test(tokens[0].token)) {
			tokens = compileSubroutineDec(tokens)
		}

		tokens = eat(tokens, RE_CLOSE_CURLY_BRACE)
	})

	compileClass(chunk)
	callback(null, parsed)
}

module.exports = parse
