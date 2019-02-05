const assert = require('assert')

const limitRegExp = module.exports.limitRegExp = regExp => new RegExp(`^${regExp}$`)

const makeEater = module.exports.makeEater = parsed => ([{ category, token }, ...tokens] = [], expected) => {
	assert.ok(
		limitRegExp(expected).test(token),
		`Expected ${token} to match ${expected}`,
	)

	const line = `<${category}> ${token} </${category}>`
	parsed.push(line)
	if (process.env.DEBUG) console.log(parsed.length, line)
	return tokens
}

const makeNester = module.exports.makeNester = parsed => nesting => {
	const line = `<${nesting}>`
	parsed.push(line)
	if (process.env.DEBUG) console.log(parsed.length, line)
}

const makeUnnester = module.exports.makeUnnester = parsed => nesting => {
	const line = `</${nesting}>`
	parsed.push(line)
	if (process.env.DEBUG) console.log(parsed.length, line)
}

const makeNestingCompiler = module.exports.makeNestingCompiler = (nest, unnest) => (nesting, compile) => tokens => {
	nest(nesting)
	tokens = compile(tokens)
	unnest(nesting)
	return tokens
}
