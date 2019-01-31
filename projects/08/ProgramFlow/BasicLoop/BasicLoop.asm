// New file: BasicLoop.vm

// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// pop local 0

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@LCL
		D=M

		@0
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// label LOOP_START

	(LOOP_START)


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


// add

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		M=M+D


// pop local 0

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@LCL
		D=M

		@0
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
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


// pop argument 0

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@ARG
		D=M

		@0
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
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


// if-goto LOOP_START

		@SP
		M=M-1
		A=M
		D=M
		@LOOP_START
		D;JNE


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


// New file: END.vm


// loop to end

	(LOOP)

		@LOOP
		0;JMP
