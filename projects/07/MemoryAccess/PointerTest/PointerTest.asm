// push constant 3030

		@3030
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// pop pointer 0

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@THIS
		D=A

		@0
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push constant 3040

		@3040
		D=A

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


// push constant 32

		@32
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// pop this 2

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@THIS
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


// push constant 46

		@46
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// pop that 6

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@THAT
		D=M

		@6
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push pointer 0

		@THIS
		
		D=A
		@0
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
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


// add

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		M=M+D


// push this 2

		@THIS
		
		D=M
		@2
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


// push that 6

		@THAT
		
		D=M
		@6
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



// loop to end

	(LOOP)

		@LOOP
		0;JMP
