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

module.exports = {
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
