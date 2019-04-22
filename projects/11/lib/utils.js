const assert = require('assert')

const limitRegExp = module.exports.limitRegExp = regExp => new RegExp(`^${regExp}$`)

module.exports.makeEater = parsed => ([{ category, token }, ...tokens] = [], expected) => {
	assert.ok(
		limitRegExp(expected).test(token),
		`Expected ${token} to match ${expected}`,
	)

	const obj = { category, token };
	parsed.push(obj)
	if (process.env.DEBUG_UTILS) console.log(parsed.length, 'category:', category, 'token:', token)
	return tokens
}

module.exports.makeNester = parsed => nesting => {
	const obj = { category: 'nest', nesting: nesting }
	parsed.push(obj)
	if (process.env.DEBUG_UTILS) console.log(parsed.length, 'category:', obj.category, 'nesting:', nesting)
}

module.exports.makeUnnester = parsed => nesting => {
	const obj = { category: 'unnest', nesting: nesting }
	parsed.push(obj)
	if (process.env.DEBUG_UTILS) console.log(parsed.length, 'category:', obj.category, 'nesting:', nesting)
}

module.exports.makeNestingCompiler = (nest, unnest) => (nesting, compile) => tokens => {
	nest(nesting)
	tokens = compile(tokens)
	unnest(nesting)
	return tokens
}
