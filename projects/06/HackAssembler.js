#!/usr/bin/env node
const fs = require('fs')
const path = require('path')
const readline = require('readline')
const stream = require('stream')

const BASE_SYMBOLS = {
	R0: 0,
	R1: 1,
	R2: 2,
	R3: 3,
	R4: 4,
	R5: 5,
	R6: 6,
	R7: 7,
	R8: 8,
	R9: 9,
	R10: 10,
	R11: 11,
	R12: 12,
	R13: 13,
	R14: 14,
	R15: 15,
	SP: 0,
	LCL: 1,
	ARG: 2,
	THIS: 3,
	THAT: 4,
	SCREEN: 16384,
	KBD: 24576,
}

const FIRST_FREE_REGISTER = 16

const isAInstruction = line => line.startsWith('@')

const isPlainIndex = identifier => identifier.match(/^[0-9]+$/)

const getABit = computation => Number(computation.includes('M'))

const getCBits = computation => ({
	'0'  : '101010',
	'1'  : '111111',
	'-1' : '111010',
	'D'  : '001100',
	'A'  : '110000',
	'!D' : '001101',
	'!A' : '110001',
	'-D' : '001111',
	'-A' : '110011',
	'D+1': '011111',
	'A+1': '110111',
	'D-1': '001110',
	'A-1': '110010',
	'D+A': '000010',
	'D-A': '010011',
	'A-D': '000111',
	'D&A': '000000',
	'D|A': '010101',
})[computation]

const getDBits = destination => ['A', 'D', 'M']
	.map(letter => destination.includes(letter))
	.map(Number)
	.join('')

const getJBits = jump => ({
	JGT: '001',
	JEQ: '010',
	JGE: '011',
	JLT: '100',
	JNE: '101',
	JLE: '110',
	JMP: '111',
})[jump] || '000'

const transformAInstruction = instruction => {
	const instructionCode = '0'
	const binary = parseInt(instruction.slice(1), 10)
		.toString(2)
	const pad = new Array(15 - binary.length)
		.fill('0')
		.join('')
	return instructionCode + pad + binary
}

const transformCInstruction = instruction => {
	const instructionCode = '111'
	const [computationAndDestination, jump] = instruction.split(';', 2)
	const [computation, destination = ''] = computationAndDestination.split('=', 2).reverse()
	const normalisedComputation = computation.replace(/M/g, 'A')

	const aBit = getABit(computation)
	const cBits = getCBits(normalisedComputation)
	const dBits = getDBits(destination)
	const jBits = getJBits(jump)

	return instructionCode + aBit + cBits + dBits + jBits
}

const stripComments = line => line.split('//', 1)[0]

function tidy(line, encoding, callback) {
	const stringLine = line.toString()
	if (process.env.DEBUG) console.info('DEBUG:', stringLine)

	const stripped = stripComments(stringLine)
	const trimmed = stripped.trim()
	const data = trimmed
		? trimmed + '\r\n'
		: null

	return callback(null, data)
}

const createDetectMarkers = (nextLineCounter, markers) =>
	function detectMarkers(line, encoding, callback) {
		const stringLine = line.toString()
		const markerMatch = stringLine.match(/^\((.+)\)/)
		if (markerMatch) {
			markers[markerMatch[1]] = nextLineCounter
			return callback()
		}
		++nextLineCounter
		return callback(null, stringLine)
	}

const createDetectVariables = (nextFreeRegisterCounter, markers, variables) =>
	function detectVariables(line, encoding, callback) {
		const stringLine = line.toString()
		const identifier = stringLine.slice(1)

		const shouldStoreVariable =
			isAInstruction(stringLine)
			&& !isPlainIndex(identifier)
			&& !Object.keys(BASE_SYMBOLS).includes(identifier)
			&& !Object.keys(markers).includes(identifier)
			&& !Object.keys(variables).includes(identifier)
		if (shouldStoreVariable) variables[identifier] = nextFreeRegisterCounter++

		return callback(null, stringLine + '\r\n')
	}

const createReplaceSymbols = (markers, variables) =>
	function replaceSymbols(line, encoding, callback) {
		const stringLine = line.toString()
		const identifier = stringLine.slice(1, -2)
		const symbols = Object.assign({}, BASE_SYMBOLS, markers, variables)

		const shouldReplace =
			isAInstruction(stringLine)
			&& !isPlainIndex(identifier)
			&& Object.keys(symbols).includes(identifier)
		const data = shouldReplace
			? stringLine.replace(identifier, symbols[identifier])
			: stringLine

		return callback(null, data)
	}

function processLine(line, encoding, callback) {
	const stringLine = line.toString()
	const stripped = stripComments(stringLine)
	const trimmed = stripped.trim()
	if (!trimmed) return callback()

	const transformedLine = isAInstruction(trimmed)
		? transformAInstruction(trimmed)
		: transformCInstruction(trimmed)

	return callback(null, transformedLine + '\r\n')
}

const connectReadlineToStream = (rl, stream) => {
	rl.on('line', line => stream.write(line))
	rl.on('close', () => stream.end())
}

const createPass = (readFilePath, writeFilePath, [firstTransform, ...transforms]) => callback => {
	const readStream = fs.createReadStream(readFilePath, 'utf8')
	const writeStream = fs.createWriteStream(writeFilePath, 'utf8')
	const rl = readline.createInterface({ input: readStream })

	transforms
		.reduce((previous, next) => previous.pipe(next), firstTransform)
		.pipe(writeStream)
		.on('finish', callback)

	connectReadlineToStream(rl, firstTransform)
}

const logFinish = () => console.info('Done :)')
const finishUp = (firstPassFilePath) => fs.unlink(firstPassFilePath, logFinish)

const main = () => {
	const inputFilePath = process.argv[2]
	const ext = path.extname(inputFilePath)
	const basePath = inputFilePath.slice(0, -ext.length)
	const firstPassFilePath = basePath + '.first_pass'
	const outputFilePath = basePath + '.hack'

	const markers = {}
	const variables = {}
	let nextLineCounter = 0
	let nextFreeRegisterCounter = FIRST_FREE_REGISTER

	const transforms = [
		tidy,
		createDetectMarkers(nextLineCounter, markers),
		createDetectVariables(nextFreeRegisterCounter, markers, variables),
		createReplaceSymbols(markers, variables),
		processLine,
	]

	const [
		tidyStream,
		detectMarkersStream,
		detectVariablesStream,
		replaceSymbolsStream,
		processLineStream,
	] = transforms
		.map(transform => new stream.Transform({ transform }))

	const runFirstPass = createPass(inputFilePath, firstPassFilePath, [
		tidyStream,
		detectMarkersStream,
	])
	const runSecondPass = createPass(firstPassFilePath, outputFilePath, [
		detectVariablesStream,
		replaceSymbolsStream,
		processLineStream,
	])

	const finalCallback = () => finishUp(firstPassFilePath)
	const firstCallback = () => runSecondPass(finalCallback)
	runFirstPass(firstCallback)
}

main()
