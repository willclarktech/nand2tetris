const {
	RE_IDENTIFIER,
	RE_INTEGER_CONSTANT,
	RE_KEYWORD,
	RE_STRING_CONSTANT,
	RE_SYMBOL,
} = require('./regexps')
const { limitRegExp } = require('./utils')

const getTokenCategory = token => {
	if (limitRegExp(RE_KEYWORD).test(token)) return 'keyword'
	if (limitRegExp(RE_INTEGER_CONSTANT).test(token)) return 'integerConstant'
	if (limitRegExp(RE_STRING_CONSTANT).test(token)) return 'stringConstant'
	if (limitRegExp(RE_IDENTIFIER).test(token)) return 'identifier'
	if (limitRegExp(RE_SYMBOL).test(token)) return 'symbol'
	throw new Error(`Token "${token}" not known`)
}

const getToken = token => limitRegExp(RE_STRING_CONSTANT).test(token)
	? token.slice(1, token.length - 1)
	: token

function categorize(chunk, encoding, callback) {
	const output = chunk.map(token => ({
		token: getToken(token),
		category: getTokenCategory(token),
	}))
	callback(null, output)
}

module.exports = categorize
