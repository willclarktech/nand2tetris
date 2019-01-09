#!/usr/bin/env node
const fs = require('fs')
const path = require('path')
const readline = require('readline')
const stream = require('stream')

const stripComments = line => line.split('//', 1)[0]

function tidy(line, encoding, callback) {
	const stringLine = line.toString()
	if (process.env.DEBUG) console.info('DEBUG:', stringLine)

	const stripped = stripComments(stringLine)
	const trimmed = stripped.trim()
	const data = trimmed
		? `${trimmed}\n`
		: null
	return callback(null, data)
}

const scriptEnd = `
// loop to end

	(LOOP)

		@LOOP
		0;JMP
`

const BANKS = {
	local: 'LCL',
	argument: 'ARG',
	this: 'THIS',
	that: 'THAT',
	temp: 5,
}

const push = (bank, offset) => {
	const bankAddress = BANKS[bank]

	const retrieveValue = bank === 'constant'
		? `
		@${offset}
		D=A
`
		: `
		@${bankAddress}
		D=M
		@${offset}
		A=A+D
		D=M
`

	const storeValue = `
		@SP
		M=M+1
		A=M-1
		M=D
`

	return `${retrieveValue}${storeValue}`
}

const pop = (bank, offset) => {
	const bankAddress = BANKS[bank]

	const retrieveValue = `
		@SP
		M=M-1
		A=M
		D=M
`

	const storeValue = `
		@value
		M=D

		@${bankAddress}
		D=M

		@${offset}
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D
`

	return `${retrieveValue}${storeValue}`
}

const add = () => `
		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		M=M+D
`

const sub = () => `
		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		M=M-D
`

let i = 0

const eq = () => {
	i++
	return `
		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		D=D-M

		@SET_TRUE_${i}
		D;JEQ

		@SP
		A=M-1
		M=0

		@CONTINUE_${i}
		0;JEQ

	(SET_TRUE_${i})
		@SP
		A=M-1
		M=-1

	(CONTINUE_${i})
`
}

const lt = () => {
	i++
	return `
		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		D=M-D

		@SET_TRUE_${i}
		D;JLT

		@SP
		A=M-1
		M=0

		@CONTINUE_${i}
		0;JEQ

	(SET_TRUE_${i})
		@SP
		A=M-1
		M=-1

	(CONTINUE_${i})
`
}

const gt = () => {
	i++
	return `
		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		D=M-D

		@SET_TRUE_${i}
		D;JGT

		@SP
		A=M-1
		M=0

		@CONTINUE_${i}
		0;JEQ

	(SET_TRUE_${i})
		@SP
		A=M-1
		M=-1

	(CONTINUE_${i})
`
}

const neg = () => `
		@SP
		A=M-1
		M=-M
`

const and = () => `
		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		M=M&D
`

const or = () => `
		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		M=M|D
`

const not = () => `
		@SP
		A=M-1
		M=!M
`


const translators = {
	push,
	pop,
	add,
	sub,
	eq,
	lt,
	gt,
	neg,
	and,
	or,
	not,
}

function translate(line, encoding, callback) {
	const lineString = line.toString()
	const [command, bank, offset] = lineString.split(' ').map(str => str.trim())
	const translation = translators[command](bank, offset)
	const commented = `// ${lineString}${translation}\n\n`
	return callback(null, commented)
}

const connectReadlineToStream = (rl, str) => {
	rl.on('line', line => str.write(line))
	rl.on('close', () => str.end())
}

const main = () => {
	const inputFilePath = process.argv[2]
	const ext = path.extname(inputFilePath)
	const basePath = inputFilePath.slice(0, -ext.length)
	const outputFilePath = basePath + '.asm'
	const readStream = fs.createReadStream(inputFilePath, 'utf8')
	const writeStream = fs.createWriteStream(outputFilePath, 'utf8')
	const rl = readline.createInterface({ input: readStream })

	const transforms = [
		tidy,
		translate,
	]
	const transformStreams = transforms.map(transform => new stream.Transform({ transform }))

	const finishUp = () => fs.appendFile(outputFilePath, scriptEnd, () => console.info('Done :)'))

	transformStreams
		.slice(1)
		.reduce((previous, next) => previous.pipe(next), transformStreams[0])
		.pipe(writeStream)
		.on('finish', finishUp)

	connectReadlineToStream(rl, transformStreams[0])
}

main()
