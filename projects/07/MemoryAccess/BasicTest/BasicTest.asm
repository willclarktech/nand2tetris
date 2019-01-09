// push constant 10

		@10
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


// push constant 21

		@21
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 22

		@22
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// pop argument 2

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@ARG
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


// pop argument 1

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@ARG
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


// push constant 36

		@36
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// pop this 6

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@THIS
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


// push constant 42

		@42
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 45

		@45
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// pop that 5

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@THAT
		D=M

		@5
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


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


// push constant 510

		@510
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// pop temp 6

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
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


// push that 5

		@THAT
		D=M
		@5
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


// push this 6

		@THIS
		D=M
		@6
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push this 6

		@THIS
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


// sub

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		M=M-D


// push temp 6

		@5
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
