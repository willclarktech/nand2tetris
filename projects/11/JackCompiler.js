#!/usr/bin/env node
const fs = require('fs')
const path = require('path')
const stream = require('stream')

const tokenize = require('./lib/tokenize')
const categorize = require('./lib/categorize')
const parse = require('./lib/parse')
// const esc = require('./lib/esc')
const symbolize = require('./lib/symbolize')
const generate = require('./lib/generate')
const combine = require('./lib/combine')

const JACK_SUFFIX = '.jack'

const getOutputFileName = inputFile => `${inputFile.slice(0, -JACK_SUFFIX.length)}.vm`

const processFile = async (inputFile) => {
	if (!inputFile.endsWith(JACK_SUFFIX)) {
		throw new Error(`Tried to process non-${JACK_SUFFIX} file :(`)
	}
	const outputFile = getOutputFileName(inputFile)
	const readStream = fs.createReadStream(inputFile)
	// Use to test streams with multiple chunks on small files
	// const readStream = fs.createReadStream(inputFile, { highWaterMark: 8 })

	const writeStream = fs.createWriteStream(outputFile)

	;[
		tokenize,
		categorize,
		parse,
		// esc,
		symbolize,
		generate,
		combine,
	]
		.map(transform => new stream.Transform({ transform, objectMode: true }))
		.reduce((previous, next) => previous.pipe(next), readStream)
		.pipe(writeStream)

	return new Promise((resolve, reject) => {
		writeStream.on('error', reject)
		writeStream.on('close', resolve)
	})
}

const main = async () => {
	const inputPath = process.argv[2]
	const inputIsFile = fs.lstatSync(inputPath).isFile()
	const inputFilePaths = inputIsFile
		? [inputPath]
		: fs.readdirSync(inputPath)
			.filter(p => p.endsWith(JACK_SUFFIX))
			.map(p => path.normalize(`${inputPath}/${p}`))
	try {
		await Promise.all(inputFilePaths.map(processFile))
	} catch (e) {
		console.error(e)
	}
	console.info('Done :)')
}

main()
