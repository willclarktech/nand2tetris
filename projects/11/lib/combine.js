function combine(chunk = [], encoding, callback) {
	const combined = `${
		chunk
			.map(({ category, token, nesting, definedOrUsed, identifierCategory }) => `category:${
				category
			}${
				token ? `,token:${token}` : ''
			}${
				nesting ? `,nesting:${nesting}` : ''
			}${
				definedOrUsed ? `,definedOrUsed:${definedOrUsed}` : ''
			}${
				identifierCategory ? `,identifierCategory:${identifierCategory}` : ''
			}`)
			.join('\n')
	}\n`
	callback(null, combined)
}

module.exports = combine
