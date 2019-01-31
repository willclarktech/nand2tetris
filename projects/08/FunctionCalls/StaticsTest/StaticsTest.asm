
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

// New file: Class1.vm

// function Class1.set 0

	(Class1.set)
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


// pop static 0

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@Class1.0
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


// pop static 1

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@Class1.1
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


// push constant 0

		@0
		D=A

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


// function Class1.get 0

	(Class1.get)
		@LCL
		A=M
	
		D=A
		@SP
		M=D


// push static 0

		@Class1.0
		
		D=A
		@0
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push static 1

		@Class1.1
		
		D=A
		@0
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


// New file: Class2.vm

// function Class2.set 0

	(Class2.set)
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


// pop static 0

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@Class2.0
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


// pop static 1

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@Class2.1
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


// push constant 0

		@0
		D=A

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


// function Class2.get 0

	(Class2.get)
		@LCL
		A=M
	
		D=A
		@SP
		M=D


// push static 0

		@Class2.0
		
		D=A
		@0
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push static 1

		@Class2.1
		
		D=A
		@0
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


// New file: Sys.vm

// function Sys.init 0

	(Sys.init)
		@LCL
		A=M
	
		D=A
		@SP
		M=D


// push constant 6

		@6
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 8

		@8
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Class1.set 2

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
		@2
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Class1.set
		0;JMP

	(RETURN_2)


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


// push constant 23

		@23
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 15

		@15
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Class2.set 2

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
		@2
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Class2.set
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


// call Class1.get 0

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

		@Class1.get
		0;JMP

	(RETURN_4)


// call Class2.get 0

		@RETURN_5
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

		@Class2.get
		0;JMP

	(RETURN_5)


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
