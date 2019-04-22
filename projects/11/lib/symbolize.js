const NEST = 'nest'
const UNNEST = 'unnest'
const CLASS = 'class'
const SUBROUTINE_DEC = 'subroutineDec'
const PARAMETER_LIST = 'parameterList'
const KEYWORD = 'keyword'
const IDENTIFIER = 'identifier'
const SUBROUTINE = 'subroutine'
const VAR = 'var'
const ARGUMENT = 'argument'
const STATIC = 'static'
const FIELD = 'field'
const CONSTRUCTOR = 'constructor'
const FUNCTION = 'function'
const METHOD = 'method'

const FULL_STOP = '.'
const OPEN_PARENTHESIS = '('

const USED = 'used'
const DEFINED = 'defined'

const IDENTIFIER_KEYWORDS = [CLASS, CONSTRUCTOR, FUNCTION, METHOD, STATIC, FIELD, VAR]
const TYPED_KEYWORDS = [CONSTRUCTOR, FUNCTION, METHOD, STATIC, FIELD, VAR]
const SUBROUTINE_KEYWORDS = [CONSTRUCTOR, FUNCTION, METHOD]
const INDEXED_IDENTIFIERS = [VAR, ARGUMENT, STATIC, FIELD]


function symbolize(chunk = [], encoding, callback) {
	let j = 0;
	const symbolTable = {
		classTable: {
			static: [],
			field: [],
		},
		subroutineTable: {
			var: [],
			argument: [],
		},
	}
	let nextIdentifierCategory
	let nextIdentifierType

	const symbolized = chunk.map((line, i, lines) => {
		if (process.env.DEBUG_SYMBOLIZED) console.log(++j, line)
		const { category, nesting, token } = line

		if (category === NEST) {
			if (nesting === CLASS) {
				if (process.env.DEBUG_SYMBOLIZED) console.log('Resetting symbol table for class')
				symbolTable.classTable = {
					static: [],
					field: [],
				}
			} else if (nesting === SUBROUTINE_DEC) {
				if (process.env.DEBUG_SYMBOLIZED) console.log('Resetting symbol table for subroutine')
				symbolTable.subroutineTable = {
					var: [],
					argument: [],
				}
			} else if (nesting === PARAMETER_LIST) {
				nextIdentifierCategory = ARGUMENT
			} else {
				// console.log(nesting)
				// throw new Error('Unknown nesting')
			}
		} else if (category === UNNEST) {
			nextIdentifierCategory = undefined
		} else if (category === KEYWORD && IDENTIFIER_KEYWORDS.includes(token)) {
			nextIdentifierCategory = SUBROUTINE_KEYWORDS.includes(token)
				? SUBROUTINE
				: token
			if (process.env.DEBUG_SYMBOLIZED) console.log('Setting next identifier category:', nextIdentifierCategory)
		} else if (TYPED_KEYWORDS.includes(lines[i - 1].token) || (nextIdentifierCategory === ARGUMENT && [FULL_STOP, OPEN_PARENTHESIS].includes(lines[i - 1].token))) {
			nextIdentifierType = token
		} else if (category === IDENTIFIER) {
			const definedOrUsed = nextIdentifierCategory ? DEFINED : USED
			let output = {
				...line,
				definedOrUsed,
			}

			switch (definedOrUsed) {
				case USED:
					if (lines[i + 1].token === FULL_STOP) {
						nextIdentifierCategory = CLASS
					} else if (lines[i + 1].token === OPEN_PARENTHESIS) {
						nextIdentifierCategory = SUBROUTINE
					}
					break
				case DEFINED:
					let runningIndex
					if (INDEXED_IDENTIFIERS.includes(nextIdentifierCategory)) {
						const entry = {
							name: token,
							type: nextIdentifierType,
							kind: nextIdentifierCategory,
						}
						switch(nextIdentifierCategory) {
							case VAR:
							case ARGUMENT:
								runningIndex = symbolTable.subroutineTable[nextIdentifierCategory].push(entry) - 1
							break
							case STATIC:
							case FIELD:
								runningIndex = symbolTable.classTable[nextIdentifierCategory].push(entry) - 1
							break
						}
						if (process.env.DEBUG_SYMBOLIZED) console.log('Adding to tables:', symbolTable.classTable, symbolTable.subroutineTable)
					}
					output = runningIndex !== undefined
						? {
							...output,
							runningIndex,
						} :
						output
					break
				default:
					throw new Error('Invalid definedOrUsed value')
			}
			output = {
				...output,
				kind: nextIdentifierCategory,
				type: nextIdentifierType,
			}

			if (lines[i + 1].token !== ',') {
				nextIdentifierCategory = undefined
			}

			return {
				output,
				symbolTable: { ...symbolTable },
			}
		}

		return {
			output: line,
			symbolTable: { ...symbolTable },
		}
	})

	callback(null, symbolized)
}

module.exports = symbolize
