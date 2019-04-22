function combine(chunk = [], encoding, callback) {
	const combined = `${
		chunk
			.map(({ category, token, nesting, definedOrUsed, identifierCategory, runningIndex }) => `category:${
				category
			}${
				token ? `,token:${token}` : ''
			}${
				nesting ? `,nesting:${nesting}` : ''
			}${
				definedOrUsed ? `,definedOrUsed:${definedOrUsed}` : ''
			}${
				identifierCategory ? `,identifierCategory:${identifierCategory}` : ''
			}${
				runningIndex !== undefined ? `,runningIndex:${runningIndex}` : ''
			}`)
			.join('\n')
	}\n`
	callback(null, combined)
}

module.exports = combine
