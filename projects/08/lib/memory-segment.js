#!/usr/bin/env node
const path = require('path')

const BANKS = {
	local: 'LCL',
	argument: 'ARG',
	pointer: 'THIS',
	this: 'THIS',
	that: 'THAT',
	temp: 5,
}

const getBankAddress = (name, bank, offset) => bank === 'static'
	? `${name}.${offset}`
	: BANKS[bank]

const push = ({ name, args: [bank, offset] }) => {
	const bankAddress = getBankAddress(name, bank, offset)

	const retrieveValue = bank === 'constant'
		? `
		@${offset}
		D=A
`
		: `
		@${bankAddress}
		${['THIS', 'THAT'].includes(bank) ? 'A=M' : ''}
		${['pointer', 'static'].includes(bank) ? 'D=A' : 'D=M'}
		@${bank === 'static' ? '0' : offset}
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

const pop = ({ name, args: [bank, offset] }) => {
	const bankAddress = getBankAddress(name, bank, offset)

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
		${['pointer', 'temp', 'static'].includes(bank) ? 'D=A' : 'D=M'}

		@${bank === 'static' ? '0' : offset}
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

module.exports = {
	push,
	pop,
}
