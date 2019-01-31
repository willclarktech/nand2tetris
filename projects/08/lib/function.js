const func = ({ args: [fn, nVars] }) => `
	(${fn})
		@LCL
		A=M
	${ new Array(parseInt(nVars, 10)).fill().map(() => `
		M=0
		A=A+1
	`).join('')  }
		D=A
		@SP
		M=D
`

let i = 0

const cll = ({ args: [fn, nArgs] }) => {
	i++
	return `
		@RETURN_${i}
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		@LCL
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		@ARG
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		@THIS
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		@THAT
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		@5
		D=A
		@${nArgs}
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@${fn}
		0;JMP

	(RETURN_${i})
`
}

const ret = () => `
		@LCL
		D=M
		@endFrame
		M=D

		@ARG
		D=M
		@nextFrame
		M=D

		@SP
		A=M-1
		D=M
		@returnValue
		M=D

		@endFrame
		A=M
		D=A
		@5
		A=D-A
		D=M
		@returnAddress
		M=D

		@endFrame
		A=M
		A=A-1
		D=M
		@THAT
		M=D

		@endFrame
		A=M
		D=A
		@2
		A=D-A
		D=M
		@THIS
		M=D

		@endFrame
		A=M
		D=A
		@3
		A=D-A
		D=M
		@ARG
		M=D

		@endFrame
		A=M
		D=A
		@4
		A=D-A
		D=M
		@LCL
		M=D

		@returnValue
		D=M
		@nextFrame
		A=M
		M=D
		D=A+1
		@SP
		M=D

		@returnAddress
		A=M
		0;JMP
`

module.exports = {
	func,
	cll,
	ret,
}
