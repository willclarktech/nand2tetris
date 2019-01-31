const label = ({ args: [fn] }) => `
	(${fn})
`

const goto = ({ args: [fn] }) => `
		@${fn}
		0;JMP
`

const ifGoto = ({ args: [fn] }) => `
		@SP
		M=M-1
		A=M
		D=M
		@${fn}
		D;JNE
`

module.exports = {
	label,
	goto,
	ifGoto,
}
