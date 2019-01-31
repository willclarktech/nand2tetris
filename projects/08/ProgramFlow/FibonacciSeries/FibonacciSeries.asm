// New file: FibonacciSeries.vm

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


// pop pointer 1

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@THIS
		D=A

		@1
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// pop that 0

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@THAT
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


// push constant 1

		@1
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// pop that 1

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@THAT
		D=M

		@1
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


// label MAIN_LOOP_START

	(MAIN_LOOP_START)


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


// if-goto COMPUTE_ELEMENT

		@SP
		M=M-1
		A=M
		D=M
		@COMPUTE_ELEMENT
		D;JNE


// goto END_PROGRAM

		@END_PROGRAM
		0;JMP


// label COMPUTE_ELEMENT

	(COMPUTE_ELEMENT)


// push that 0

		@THAT
		
		D=M
		@0
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push that 1

		@THAT
		
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


// pop that 2

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@THAT
		D=M

		@2
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push pointer 1

		@THIS
		
		D=A
		@1
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


// add

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		M=M+D


// pop pointer 1

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@THIS
		D=A

		@1
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


// goto MAIN_LOOP_START

		@MAIN_LOOP_START
		0;JMP


// label END_PROGRAM

	(END_PROGRAM)


// New file: END.vm


// loop to end

	(LOOP)

		@LOOP
		0;JMP
