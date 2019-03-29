const RE_OPEN_CLOSE = /^\s*<(.+)>(?:.+)<\/\1>\s*$/
const RE_CLOSE = /^\s*<\/(.+)>\s*$/
const INDENT = '  '

const getAdjustment = line => RE_OPEN_CLOSE.test(line)
	? 0
	: RE_CLOSE.test(line)
		? -1
		: 1

const processLines = ({ lines = [], level = 0 }, line) => {
	const adjustment = getAdjustment(line)
	const newLevel = level + adjustment
	const currentLevel = RE_CLOSE.test(line)
		? newLevel
		: level

	const newLine = INDENT.repeat(currentLevel) + line

	return {
		lines: [...lines, newLine],
		level: newLevel,
	}
}

function indent(chunk, encoding, callback) {
	const { lines, level } = chunk
		.filter(Boolean)
		.reduce(processLines, { level: this.level })

	this.level = level
	callback(null, lines)
}

module.exports = indent
