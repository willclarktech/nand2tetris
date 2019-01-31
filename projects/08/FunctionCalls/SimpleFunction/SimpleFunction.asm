// New file: SimpleFunction.vm

// function SimpleFunction.test 2

	(SimpleFunction.test)
		@LCL
		A=M
	
		M=0
		A=A+1
	
		M=0
		A=A+1
	
		D=A
		@SP
		M=D


// push local 0

		@LCL
		
		D=M
		@0
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push local 1

		@LCL
		
		D=M
		@1
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// add

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		M=M+D


// not

		@SP
		A=M-1
		M=!M


// push argument 0

		@ARG
		
		D=M
		@0
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// add

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		M=M+D


// push argument 1

		@ARG
		
		D=M
		@1
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// sub

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		M=M-D


// return

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


// New file: END.vm


// loop to end

	(LOOP)

		@LOOP
		0;JMP
