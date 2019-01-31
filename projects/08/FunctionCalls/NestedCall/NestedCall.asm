
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

// New file: Sys.vm

// function Sys.init 0

	(Sys.init)
		@LCL
		A=M
	
		D=A
		@SP
		M=D


// push constant 4000

		@4000
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


// push constant 5000

		@5000
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


// call Sys.main 0

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

		@Sys.main
		0;JMP

	(RETURN_2)


// pop temp 1

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
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


// label LOOP

	(LOOP)


// goto LOOP

		@LOOP
		0;JMP


// function Sys.main 5

	(Sys.main)
		@LCL
		A=M
	
		M=0
		A=A+1
	
		M=0
		A=A+1
	
		M=0
		A=A+1
	
		M=0
		A=A+1
	
		M=0
		A=A+1
	
		D=A
		@SP
		M=D


// push constant 4001

		@4001
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


// push constant 5001

		@5001
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


// push constant 200

		@200
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// pop local 1

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@LCL
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


// push constant 40

		@40
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// pop local 2

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@LCL
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


// push constant 6

		@6
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// pop local 3

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@LCL
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


// push constant 123

		@123
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Sys.add12 1

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

		@Sys.add12
		0;JMP

	(RETURN_3)


// pop temp 0

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
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


// push local 2

		@LCL
		
		D=M
		@2
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push local 3

		@LCL
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push local 4

		@LCL
		
		D=M
		@4
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


// add

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		M=M+D


// add

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		M=M+D


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


// function Sys.add12 0

	(Sys.add12)
		@LCL
		A=M
	
		D=A
		@SP
		M=D


// push constant 4002

		@4002
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


// push constant 5002

		@5002
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


// push constant 12

		@12
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
