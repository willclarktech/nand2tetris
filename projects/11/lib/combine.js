function combine(chunk = [], encoding, callback) {
	const combined = `${
		chunk
			.map(({ output: {
				category,
				token,
				nesting,
				definedOrUsed,
				kind,
				type,
				runningIndex,
			}}) => `category:${
				category
			}${
				token ? `,token:${token}` : ''
			}${
				nesting ? `,nesting:${nesting}` : ''
			}${
				definedOrUsed ? `,definedOrUsed:${definedOrUsed}` : ''
			}${
				kind ? `,kind:${kind}` : ''
			}${
				type ? `,type:${type}` : ''
			}${
				runningIndex !== undefined ? `,runningIndex:${runningIndex}` : ''
			}`)
			.join('\n')
	}\n`
	callback(null, combined)
}

module.exports = combine
