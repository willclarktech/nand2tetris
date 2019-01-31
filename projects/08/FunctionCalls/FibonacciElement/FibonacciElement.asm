
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

		
		@RETURN_1
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
		@0
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Sys.init
		0;JMP

	(RETURN_1)

// New file: Main.vm

// function Main.fibonacci 0

	(Main.fibonacci)
		@LCL
		A=M
	
		D=A
		@SP
		M=D


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


// push constant 2

		@2
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// lt

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		D=M-D

		@SET_TRUE_1
		D;JLT

		@SP
		A=M-1
		M=0

		@CONTINUE_1
		0;JEQ

	(SET_TRUE_1)
		@SP
		A=M-1
		M=-1

	(CONTINUE_1)


// if-goto IF_TRUE

		@SP
		M=M-1
		A=M
		D=M
		@IF_TRUE
		D;JNE


// goto IF_FALSE

		@IF_FALSE
		0;JMP


// label IF_TRUE

	(IF_TRUE)


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


// label IF_FALSE

	(IF_FALSE)


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


// push constant 2

		@2
		D=A

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


// call Main.fibonacci 1

		@RETURN_2
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
		@1
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Main.fibonacci
		0;JMP

	(RETURN_2)


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


// push constant 1

		@1
		D=A

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


// call Main.fibonacci 1

		@RETURN_3
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
		@1
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Main.fibonacci
		0;JMP

	(RETURN_3)


// add

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		M=M+D


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


// New file: Sys.vm

// function Sys.init 0

	(Sys.init)
		@LCL
		A=M
	
		D=A
		@SP
		M=D


// push constant 4

		@4
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Main.fibonacci 1

		@RETURN_4
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
		@1
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Main.fibonacci
		0;JMP

	(RETURN_4)


// label WHILE

	(WHILE)


// goto WHILE

		@WHILE
		0;JMP


// New file: END.vm


// loop to end

	(LOOP)

		@LOOP
		0;JMP
