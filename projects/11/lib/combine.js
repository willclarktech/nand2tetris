function combine(chunk = [], encoding, callback) {
	const combined = `${chunk.join('\n')}\n`
	callback(null, combined)
}

module.exports = combine
