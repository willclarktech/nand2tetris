const RE_CLASS = /^<class>$/
const RE_SUBROUTINE_DEC = /^<subroutineDec>$/
const RE_IDENTIFIER_CATEGORY_DEFINITION = /^<keyword> (class|constructor|function|method|static|field|var) <\/keyword>$/
const RE_IDENTIFIER = /^<identifier> (.+) <\/identifier>$/

const RE_FULL_STOP = /^<symbol> \. <\/symbol>$/
const RE_OPEN_PARENTHESIS = /^<symbol> \( <\/symbol>$/

const SUBROUTINES = ["constructor", "function", "method"]

let j = 0;

function symbolize(chunk = [], encoding, callback) {
	let classTable;
	let subroutineTable;
	let nextIdentifierCategory;

	const symbolized = chunk.map((line, i, lines) => {
		if (process.env.DEBUG) console.log(++j, line)

		if (RE_CLASS.test(line)) {
			if (process.env.DEBUG) console.log('Resetting symbol table for class')
			classTable = {}
			// subroutineTable = {}
		} else if (RE_SUBROUTINE_DEC.test(line)) {
			if (process.env.DEBUG) console.log('Resetting symbol table for subroutine')
			subroutineTable = {}
		} else if (RE_IDENTIFIER_CATEGORY_DEFINITION.test(line)) {
			const match = line.match(RE_IDENTIFIER_CATEGORY_DEFINITION)[1]
			nextIdentifierCategory = SUBROUTINES.includes(match)
				? 'subroutine'
				: match
			if (process.env.DEBUG) console.log('Setting next identifier category:', nextIdentifierCategory)
		} else if (RE_IDENTIFIER.test(line)) {
			const definedOrUsed = nextIdentifierCategory ? "defined" : "used"

			if (RE_FULL_STOP.test(lines[i + 1])) {
				nextIdentifierCategory = 'class'
			} else if (RE_OPEN_PARENTHESIS.test(lines[i + 1])) {
				nextIdentifierCategory = 'subroutine'
			}

			const tagWithoutIndex = `identifier:${definedOrUsed}:${nextIdentifierCategory}`
			const tag = tagWithoutIndex

			nextIdentifierCategory = undefined
			return line.replace(/identifier/g, tag)
		}

		return line
	})

	callback(null, symbolized)
}

module.exports = symbolize
