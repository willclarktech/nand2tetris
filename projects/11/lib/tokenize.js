const {
	RE_SECOND_COMMENT_CHAR,
	RE_SPACE,
	RE_SYMBOL,
} = require('./regexps')
const { limitRegExp } = require('./utils')

const skip = tokens => ({
	tokens,
	remainder: '',
})

const addCharToRemainder = (char, remainder, tokens) => ({
	tokens,
	remainder: `${remainder}${char}`,
})

const noRemainderReducer = (char, tokens) => {
	if (limitRegExp(RE_SPACE).test(char)) {
		return skip(tokens)
	}
	if (limitRegExp(RE_SYMBOL).test(char) && char !== '/') {
		return { tokens: [...tokens, char], remainder: '' }
	}
	return { tokens, remainder: char }
}

const remainderReducer = (char, tokens, remainder) => {
	if (remainder.length === 1 && remainder.startsWith('/')) {
		return limitRegExp(RE_SECOND_COMMENT_CHAR).test(char)
			? addCharToRemainder(char, remainder, tokens)
			: noRemainderReducer(char, [...tokens, '/'])
	}
	if (remainder.startsWith('//')) {
		return char === '\n'
			? skip(tokens)
			: { tokens, remainder }
	}
	if (remainder.startsWith('/*')) {
		return (remainder.length > 2 && remainder.endsWith('*') && char === '/')
			? skip(tokens)
			: addCharToRemainder(char, remainder, tokens)
	}
	if (limitRegExp(RE_SPACE).test(char)) {
		return remainder.startsWith('"')
			? addCharToRemainder(char, remainder, tokens)
			: { tokens: [...tokens, remainder], remainder: '' }
	}
	if (char === '"' && remainder.startsWith('"')) {
		return { tokens: [...tokens, `${remainder}${char}`], remainder: '' }
	}
	if (limitRegExp(RE_SYMBOL).test(char)) {
		return noRemainderReducer(char, [...tokens, remainder])
	}

	return addCharToRemainder(char, remainder, tokens)
}

const tokenReducer = ({ tokens, remainder }, next) =>
	remainder.length
		? remainderReducer(next, tokens, remainder)
		: noRemainderReducer(next, tokens)

function tokenize(chunk, encoding, callback) {
	const {
		tokens,
		remainder,
	} = Array.from(chunk.toString())
		.reduce(tokenReducer, { tokens: [], remainder: this.remainder || '' })

	this.remainder = remainder
	callback(null, tokens)
}

module.exports = tokenize
