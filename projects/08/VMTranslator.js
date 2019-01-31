#!/usr/bin/env node
const fs = require('fs')
const path = require('path')
const readline = require('readline')
const stream = require('stream')

const arithmeticLogicCommands = require('./lib/arithmetic-logic')
const memorySegmentCommands = require('./lib/memory-segment')
const branchingCommands = require('./lib/branching')
const functionCommands = require('./lib/function')
const boilerplate = require('./lib/boilerplate')

const {
	CHANGE_FILE_SIGNAL,
	connectReadlineToStream,
	tidy,
} = require('./lib/utils')

const inputPath = process.argv[2]
const inputIsFile = fs.lstatSync(inputPath).isFile()
const inputFilePaths = inputIsFile
	? [inputPath]
	: fs.readdirSync(inputPath)
		.filter(p => p.endsWith('.vm'))
		.map(p => path.normalize(`${inputPath}/${p}`))
const inputFileNames = inputFilePaths
	.map(p => path.parse(p).name)

const { name, ext } = path.parse(inputPath)
const basePath = path.normalize(
	inputIsFile
		? inputPath.slice(0, -ext.length)
		: `${inputPath}/${name}`
)
const outputFilePath = `${basePath}.asm`

const translators = {
	// arithmetic/logical commands
	...arithmeticLogicCommands,
	// memory segment commands
	...memorySegmentCommands,
	// branching commands
	...branchingCommands,
	'if-goto': branchingCommands.ifGoto,
	// function commands
	'function': functionCommands.func,
	'call': functionCommands.cll,
	'return': functionCommands.ret,
}

function translate(line, encoding, callback) {
	const prefix = this.fileName ? '' : `// New file: ${inputFileNames[0]}.vm\n\n`
	if (!this.fileName) {
		this.fileName = inputFileNames[0]
	}
	const lineString = line.toString()
	const changeFileMatch = lineString.match(CHANGE_FILE_SIGNAL)
	if (changeFileMatch) {
		this.fileName = changeFileMatch[1]
		return callback(null, `// New file: ${this.fileName}.vm\n\n`)
	}

	const [command, ...args] = lineString.split(' ').map(str => str.trim())
	const translation = translators[command]({
		name: this.fileName,
		args,
	})
	const commented = `${prefix}// ${lineString}${translation}\n\n`
	return callback(null, commented)
}

const main = () => {
	if (!inputFilePaths.length) {
		console.info('Could not find any .vm files at that location')
		return
	}

	const writeStream = fs.createWriteStream(outputFilePath, 'utf8')
	const transforms = [
		tidy,
		translate,
	]
	const transformStreams = transforms.map(transform => new stream.Transform({ transform }))

	const finishUp = () => fs.appendFile(outputFilePath, boilerplate.scriptEnd, () => console.info('Done :)'))

	transformStreams
		.slice(1)
		.reduce((previous, next) => previous.pipe(next), transformStreams[0])
		.pipe(writeStream)
		.on('finish', finishUp)

	let ended = 0
	const combined = new stream.PassThrough()
	const readStream = inputFilePaths
		.map(p => fs.createReadStream(p, 'utf8'))
		.reduce((pt, s, i, a) => {
			s.on('end', () => {
				pt.write(`$$$${inputFileNames[i+1] || 'END'}$$$\n`)
				if (a[i+1]) a[i+1].pipe(pt, { end: false })
				return ++ended === inputFilePaths.length && pt.emit('end')
			})
			if (!i) pt.write(`$$$${inputFileNames[0]}$$$\n`) && s.pipe(pt, { end: false })
			return pt
		}, combined)
	const rl = readline.createInterface({
		crlfDelay: Infinity,
		input: readStream,
	})

	const connectStreams = () => connectReadlineToStream(rl, transformStreams[0])
	const processDir = () => writeStream.write(boilerplate.scriptStart, connectStreams)
	const process = inputIsFile ? connectStreams : processDir

	process()
}

main()
