// push constant 111

		@111
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 333

		@333
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 888

		@888
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// pop static 8

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@StaticTest.8
		D=M

		@8
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// pop static 3

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@StaticTest.3
		D=M

		@3
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// pop static 1

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@StaticTest.1
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


// push static 3

		@StaticTest.3
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push static 1

		@StaticTest.1
		
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


// push static 8

		@StaticTest.8
		
		D=M
		@8
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
