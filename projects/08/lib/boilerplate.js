const { cll } = require('./function')

const scriptStart = `
// bootstrap code

		@256
		D=A
		@SP
		M=D

		D=-1
		@LCL
		M=D

		D=-1
		D=D-1
		@ARG
		M=D

		D=-1
		D=D-1
		D=D-1
		@THIS
		M=D

		D=-1
		D=D-1
		D=D-1
		D=D-1
		@THAT
		M=D

		${ cll({ args: ['Sys.init', 0] }) }
`

const scriptEnd = `
// loop to end

	(LOOP)

		@LOOP
		0;JMP
`

module.exports = {
	scriptStart,
	scriptEnd,
}
