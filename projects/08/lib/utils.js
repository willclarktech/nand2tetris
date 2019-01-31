const CHANGE_FILE_SIGNAL = /^\$\$\$(.+)\$\$\$/

const connectReadlineToStream = (rl, str) => {
	rl.on('line', line => str.write(line))
	rl.on('close', () => str.end())
}

const stripComments = line => line.split('//', 1)[0]

function tidy(line, encoding, callback) {
	const stringLine = line.toString()
	if (process.env.DEBUG) console.info('DEBUG:', stringLine)
	if (stringLine.match(CHANGE_FILE_SIGNAL)) return callback(null, stringLine)

	const stripped = stripComments(stringLine)
	const trimmed = stripped.trim()
	const data = trimmed
		? `${trimmed}\n`
		: null
	return callback(null, data)
}

module.exports = {
	CHANGE_FILE_SIGNAL,
	connectReadlineToStream,
	tidy,
}
