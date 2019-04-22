
function generate(chunk = [], encoding, callback) {
	let j = 0;

	const generated = chunk.map((line, i, lines) => {
		if (process.env.DEBUG_GENERATED) console.log(++j, line)
		return line
	})

	callback(null, generated)
}

module.exports = generate
