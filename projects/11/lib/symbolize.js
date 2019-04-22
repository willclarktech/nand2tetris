const NEST = 'nest'
const SUBROUTINE_DEC = 'subroutineDec'
const KEYWORD = 'keyword'
const IDENTIFIER = 'identifier'
const IDENTIFIER_CATEGORIES = ['class', 'constructor', 'function', 'method', 'static', 'field', 'var']
const CLASS = 'class'
const SUBROUTINE = 'subroutine'
const SUBROUTINES = ["constructor", "function", "method"]

const FULL_STOP = '.'
const OPEN_PARENTHESIS = '('

const DEFINED = 'defined'
const USED = 'used'

let j = 0;

function symbolize(chunk = [], encoding, callback) {
	let classTable;
	let subroutineTable;
	let nextIdentifierCategory;

	const symbolized = chunk.map((line, i, lines) => {
		if (process.env.DEBUG) console.log(++j, line)
		const { category, nesting, token } = line

		if (category === NEST) {
			if (nesting === CLASS) {
				if (process.env.DEBUG) console.log('Resetting symbol table for class')
				classTable = {}
			} else if (nesting === SUBROUTINE_DEC) {
				if (process.env.DEBUG) console.log('Resetting symbol table for subroutine')
				subroutineTable = {}
			} else {
				// throw new Error('Unknown nesting')
			}
		} else if (category === KEYWORD && IDENTIFIER_CATEGORIES.includes(token)) {
			nextIdentifierCategory = SUBROUTINES.includes(token)
				? SUBROUTINE
				: token
			if (process.env.DEBUG) console.log('Setting next identifier category:', nextIdentifierCategory)
		} else if (category === IDENTIFIER) {
			const definedOrUsed = nextIdentifierCategory ? DEFINED : USED

			if (lines[i + 1].token === FULL_STOP) {
				nextIdentifierCategory = CLASS
			} else if (lines[i + 1].token === OPEN_PARENTHESIS) {
				nextIdentifierCategory = SUBROUTINE
			}

			const identifierCategory = nextIdentifierCategory
			nextIdentifierCategory = undefined
			return {
				...line,
				definedOrUsed,
				identifierCategory,
			}
		}

		return line
	})

	callback(null, symbolized)
}

module.exports = symbolize
