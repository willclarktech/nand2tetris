const getLine = symbol => `<symbol> ${symbol} </symbol>`

const RE_LT = getLine('<')
const RE_GT = getLine('>')
const RE_QUOT = getLine('"')
const RE_AMP = getLine('&')

function esc(chunk = [], encoding, callback) {
	const escaped = chunk.map(line => {
		if (line.match(RE_LT)) {
			return getLine('&lt;')
		} else if (line.match(RE_GT)) {
			return getLine('&gt;')
		} else if (line.match(RE_QUOT)) {
			return getLine('&quot;')
		} else if (line.match(RE_AMP)) {
			return getLine('&amp;')
		} else {
			return line
		}
	})

	callback(null, escaped)
}

module.exports = esc
