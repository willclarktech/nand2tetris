
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

// New file: Array.vm

// function Array.new 0

	(Array.new)
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


// call Memory.alloc 1

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

		@Memory.alloc
		0;JMP

	(RETURN_2)


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


// function Array.dispose 0

	(Array.dispose)
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


// call Memory.deAlloc 1

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

		@Memory.deAlloc
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


// New file: Keyboard.vm

// function Keyboard.init 0

	(Keyboard.init)
		@LCL
		A=M
	
		D=A
		@SP
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


// function Keyboard.keyPressed 0

	(Keyboard.keyPressed)
		@LCL
		A=M
	
		D=A
		@SP
		M=D


// push constant 24576

		@24576
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Memory.peek 1

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

		@Memory.peek
		0;JMP

	(RETURN_4)


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


// function Keyboard.readChar 1

	(Keyboard.readChar)
		@LCL
		A=M
	
		M=0
		A=A+1
	
		D=A
		@SP
		M=D


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


// label WHILE_EXP1a58b79503ff8e5e

	(WHILE_EXP1a58b79503ff8e5e)


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


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// eq

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		D=D-M

		@SET_TRUE_1
		D;JEQ

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


// not

		@SP
		A=M-1
		M=!M


// if-goto WHILE_END1a58b79503ff8e5e

		@SP
		M=M-1
		A=M
		D=M
		@WHILE_END1a58b79503ff8e5e
		D;JNE


// call Keyboard.keyPressed 0

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

		@Keyboard.keyPressed
		0;JMP

	(RETURN_5)


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


// goto WHILE_EXP1a58b79503ff8e5e

		@WHILE_EXP1a58b79503ff8e5e
		0;JMP


// label WHILE_END1a58b79503ff8e5e

	(WHILE_END1a58b79503ff8e5e)


// label WHILE_EXPfabcbf7a5839d9dc

	(WHILE_EXPfabcbf7a5839d9dc)


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


// call Keyboard.keyPressed 0

		@RETURN_6
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

		@Keyboard.keyPressed
		0;JMP

	(RETURN_6)


// eq

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		D=D-M

		@SET_TRUE_2
		D;JEQ

		@SP
		A=M-1
		M=0

		@CONTINUE_2
		0;JEQ

	(SET_TRUE_2)
		@SP
		A=M-1
		M=-1

	(CONTINUE_2)


// not

		@SP
		A=M-1
		M=!M


// if-goto WHILE_ENDfabcbf7a5839d9dc

		@SP
		M=M-1
		A=M
		D=M
		@WHILE_ENDfabcbf7a5839d9dc
		D;JNE


// goto WHILE_EXPfabcbf7a5839d9dc

		@WHILE_EXPfabcbf7a5839d9dc
		0;JMP


// label WHILE_ENDfabcbf7a5839d9dc

	(WHILE_ENDfabcbf7a5839d9dc)


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


// call String.backSpace 0

		@RETURN_7
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

		@String.backSpace
		0;JMP

	(RETURN_7)


// eq

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		D=D-M

		@SET_TRUE_3
		D;JEQ

		@SP
		A=M-1
		M=0

		@CONTINUE_3
		0;JEQ

	(SET_TRUE_3)
		@SP
		A=M-1
		M=-1

	(CONTINUE_3)


// if-goto IF_TRUEd497655b73029f57

		@SP
		M=M-1
		A=M
		D=M
		@IF_TRUEd497655b73029f57
		D;JNE


// goto IF_FALSEd497655b73029f57

		@IF_FALSEd497655b73029f57
		0;JMP


// label IF_TRUEd497655b73029f57

	(IF_TRUEd497655b73029f57)


// call Output.backSpace 0

		@RETURN_8
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

		@Output.backSpace
		0;JMP

	(RETURN_8)


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


// label IF_FALSEd497655b73029f57

	(IF_FALSEd497655b73029f57)


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


// call String.newLine 0

		@RETURN_9
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

		@String.newLine
		0;JMP

	(RETURN_9)


// eq

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		D=D-M

		@SET_TRUE_4
		D;JEQ

		@SP
		A=M-1
		M=0

		@CONTINUE_4
		0;JEQ

	(SET_TRUE_4)
		@SP
		A=M-1
		M=-1

	(CONTINUE_4)


// if-goto IF_TRUE00ee38f6f82c972e

		@SP
		M=M-1
		A=M
		D=M
		@IF_TRUE00ee38f6f82c972e
		D;JNE


// goto IF_FALSE00ee38f6f82c972e

		@IF_FALSE00ee38f6f82c972e
		0;JMP


// label IF_TRUE00ee38f6f82c972e

	(IF_TRUE00ee38f6f82c972e)


// call Output.println 0

		@RETURN_10
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

		@Output.println
		0;JMP

	(RETURN_10)


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


// label IF_FALSE00ee38f6f82c972e

	(IF_FALSE00ee38f6f82c972e)


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


// call Output.printChar 1

		@RETURN_11
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

		@Output.printChar
		0;JMP

	(RETURN_11)


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


// function Keyboard.readLine 2

	(Keyboard.readLine)
		@LCL
		A=M
	
		M=0
		A=A+1
	
		M=0
		A=A+1
	
		D=A
		@SP
		M=D


// push constant 128

		@128
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.new 1

		@RETURN_12
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

		@String.new
		0;JMP

	(RETURN_12)


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


// call Output.printString 1

		@RETURN_13
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

		@Output.printString
		0;JMP

	(RETURN_13)


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


// label WHILE_EXP5e4ab0fdc395bb23

	(WHILE_EXP5e4ab0fdc395bb23)


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


// call String.newLine 0

		@RETURN_14
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

		@String.newLine
		0;JMP

	(RETURN_14)


// eq

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		D=D-M

		@SET_TRUE_5
		D;JEQ

		@SP
		A=M-1
		M=0

		@CONTINUE_5
		0;JEQ

	(SET_TRUE_5)
		@SP
		A=M-1
		M=-1

	(CONTINUE_5)


// not

		@SP
		A=M-1
		M=!M


// not

		@SP
		A=M-1
		M=!M


// if-goto WHILE_END5e4ab0fdc395bb23

		@SP
		M=M-1
		A=M
		D=M
		@WHILE_END5e4ab0fdc395bb23
		D;JNE


// call Keyboard.readChar 0

		@RETURN_15
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

		@Keyboard.readChar
		0;JMP

	(RETURN_15)


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


// call String.backSpace 0

		@RETURN_16
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

		@String.backSpace
		0;JMP

	(RETURN_16)


// eq

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		D=D-M

		@SET_TRUE_6
		D;JEQ

		@SP
		A=M-1
		M=0

		@CONTINUE_6
		0;JEQ

	(SET_TRUE_6)
		@SP
		A=M-1
		M=-1

	(CONTINUE_6)


// if-goto IF_TRUEc5154c4117910538

		@SP
		M=M-1
		A=M
		D=M
		@IF_TRUEc5154c4117910538
		D;JNE


// goto IF_FALSEc5154c4117910538

		@IF_FALSEc5154c4117910538
		0;JMP


// label IF_TRUEc5154c4117910538

	(IF_TRUEc5154c4117910538)


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


// call String.eraseLastChar 1

		@RETURN_17
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

		@String.eraseLastChar
		0;JMP

	(RETURN_17)


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


// goto IF_ENDc5154c4117910538

		@IF_ENDc5154c4117910538
		0;JMP


// label IF_FALSEc5154c4117910538

	(IF_FALSEc5154c4117910538)


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


// call String.appendChar 2

		@RETURN_18
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

		@String.appendChar
		0;JMP

	(RETURN_18)


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


// label IF_ENDc5154c4117910538

	(IF_ENDc5154c4117910538)


// goto WHILE_EXP5e4ab0fdc395bb23

		@WHILE_EXP5e4ab0fdc395bb23
		0;JMP


// label WHILE_END5e4ab0fdc395bb23

	(WHILE_END5e4ab0fdc395bb23)


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


// call String.eraseLastChar 1

		@RETURN_19
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

		@String.eraseLastChar
		0;JMP

	(RETURN_19)


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


// function Keyboard.readInt 1

	(Keyboard.readInt)
		@LCL
		A=M
	
		M=0
		A=A+1
	
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


// call Keyboard.readLine 1

		@RETURN_20
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

		@Keyboard.readLine
		0;JMP

	(RETURN_20)


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


// call String.intValue 1

		@RETURN_21
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

		@String.intValue
		0;JMP

	(RETURN_21)


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


// New file: Main.vm

// function Main.main 1

	(Main.main)
		@LCL
		A=M
	
		M=0
		A=A+1
	
		D=A
		@SP
		M=D


// push constant 10

		@10
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.new 1

		@RETURN_22
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

		@String.new
		0;JMP

	(RETURN_22)


// pop temp 3

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@3
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 87

		@87
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_23
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

		@String.appendChar
		0;JMP

	(RETURN_23)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 97

		@97
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_24
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

		@String.appendChar
		0;JMP

	(RETURN_24)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 105

		@105
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_25
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

		@String.appendChar
		0;JMP

	(RETURN_25)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 116

		@116
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_26
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

		@String.appendChar
		0;JMP

	(RETURN_26)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 32

		@32
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_27
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

		@String.appendChar
		0;JMP

	(RETURN_27)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 116

		@116
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_28
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

		@String.appendChar
		0;JMP

	(RETURN_28)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 101

		@101
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_29
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

		@String.appendChar
		0;JMP

	(RETURN_29)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 115

		@115
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_30
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

		@String.appendChar
		0;JMP

	(RETURN_30)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 116

		@116
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_31
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

		@String.appendChar
		0;JMP

	(RETURN_31)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 58

		@58
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_32
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

		@String.appendChar
		0;JMP

	(RETURN_32)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// call Output.printString 1

		@RETURN_33
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

		@Output.printString
		0;JMP

	(RETURN_33)


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


// call Output.println 0

		@RETURN_34
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

		@Output.println
		0;JMP

	(RETURN_34)


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


// push constant 64

		@64
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.new 1

		@RETURN_35
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

		@String.new
		0;JMP

	(RETURN_35)


// pop temp 3

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@3
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 80

		@80
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_36
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

		@String.appendChar
		0;JMP

	(RETURN_36)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 114

		@114
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_37
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

		@String.appendChar
		0;JMP

	(RETURN_37)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 101

		@101
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_38
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

		@String.appendChar
		0;JMP

	(RETURN_38)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 115

		@115
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_39
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

		@String.appendChar
		0;JMP

	(RETURN_39)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 115

		@115
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_40
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

		@String.appendChar
		0;JMP

	(RETURN_40)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 32

		@32
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_41
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

		@String.appendChar
		0;JMP

	(RETURN_41)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 97

		@97
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_42
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

		@String.appendChar
		0;JMP

	(RETURN_42)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 110

		@110
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_43
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

		@String.appendChar
		0;JMP

	(RETURN_43)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 121

		@121
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_44
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

		@String.appendChar
		0;JMP

	(RETURN_44)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 32

		@32
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_45
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

		@String.appendChar
		0;JMP

	(RETURN_45)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 107

		@107
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_46
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

		@String.appendChar
		0;JMP

	(RETURN_46)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 101

		@101
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_47
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

		@String.appendChar
		0;JMP

	(RETURN_47)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 121

		@121
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_48
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

		@String.appendChar
		0;JMP

	(RETURN_48)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 46

		@46
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_49
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

		@String.appendChar
		0;JMP

	(RETURN_49)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 32

		@32
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_50
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

		@String.appendChar
		0;JMP

	(RETURN_50)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 65

		@65
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_51
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

		@String.appendChar
		0;JMP

	(RETURN_51)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 102

		@102
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_52
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

		@String.appendChar
		0;JMP

	(RETURN_52)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 116

		@116
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_53
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

		@String.appendChar
		0;JMP

	(RETURN_53)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 101

		@101
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_54
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

		@String.appendChar
		0;JMP

	(RETURN_54)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 114

		@114
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_55
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

		@String.appendChar
		0;JMP

	(RETURN_55)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 32

		@32
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_56
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

		@String.appendChar
		0;JMP

	(RETURN_56)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 50

		@50
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_57
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

		@String.appendChar
		0;JMP

	(RETURN_57)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 32

		@32
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_58
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

		@String.appendChar
		0;JMP

	(RETURN_58)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 115

		@115
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_59
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

		@String.appendChar
		0;JMP

	(RETURN_59)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 101

		@101
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_60
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

		@String.appendChar
		0;JMP

	(RETURN_60)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 99

		@99
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_61
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

		@String.appendChar
		0;JMP

	(RETURN_61)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 111

		@111
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_62
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

		@String.appendChar
		0;JMP

	(RETURN_62)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 110

		@110
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_63
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

		@String.appendChar
		0;JMP

	(RETURN_63)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 100

		@100
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_64
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

		@String.appendChar
		0;JMP

	(RETURN_64)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 115

		@115
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_65
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

		@String.appendChar
		0;JMP

	(RETURN_65)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 44

		@44
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_66
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

		@String.appendChar
		0;JMP

	(RETURN_66)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 32

		@32
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_67
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

		@String.appendChar
		0;JMP

	(RETURN_67)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 97

		@97
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_68
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

		@String.appendChar
		0;JMP

	(RETURN_68)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 110

		@110
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_69
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

		@String.appendChar
		0;JMP

	(RETURN_69)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 111

		@111
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_70
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

		@String.appendChar
		0;JMP

	(RETURN_70)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 116

		@116
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_71
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

		@String.appendChar
		0;JMP

	(RETURN_71)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 104

		@104
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_72
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

		@String.appendChar
		0;JMP

	(RETURN_72)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 101

		@101
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_73
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

		@String.appendChar
		0;JMP

	(RETURN_73)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 114

		@114
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_74
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

		@String.appendChar
		0;JMP

	(RETURN_74)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 32

		@32
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_75
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

		@String.appendChar
		0;JMP

	(RETURN_75)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 109

		@109
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_76
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

		@String.appendChar
		0;JMP

	(RETURN_76)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 101

		@101
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_77
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

		@String.appendChar
		0;JMP

	(RETURN_77)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 115

		@115
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_78
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

		@String.appendChar
		0;JMP

	(RETURN_78)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 115

		@115
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_79
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

		@String.appendChar
		0;JMP

	(RETURN_79)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 97

		@97
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_80
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

		@String.appendChar
		0;JMP

	(RETURN_80)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 103

		@103
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_81
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

		@String.appendChar
		0;JMP

	(RETURN_81)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 101

		@101
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_82
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

		@String.appendChar
		0;JMP

	(RETURN_82)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 32

		@32
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_83
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

		@String.appendChar
		0;JMP

	(RETURN_83)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 119

		@119
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_84
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

		@String.appendChar
		0;JMP

	(RETURN_84)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 105

		@105
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_85
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

		@String.appendChar
		0;JMP

	(RETURN_85)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 108

		@108
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_86
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

		@String.appendChar
		0;JMP

	(RETURN_86)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 108

		@108
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_87
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

		@String.appendChar
		0;JMP

	(RETURN_87)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 32

		@32
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_88
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

		@String.appendChar
		0;JMP

	(RETURN_88)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 98

		@98
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_89
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

		@String.appendChar
		0;JMP

	(RETURN_89)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 101

		@101
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_90
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

		@String.appendChar
		0;JMP

	(RETURN_90)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 32

		@32
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_91
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

		@String.appendChar
		0;JMP

	(RETURN_91)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 112

		@112
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_92
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

		@String.appendChar
		0;JMP

	(RETURN_92)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 114

		@114
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_93
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

		@String.appendChar
		0;JMP

	(RETURN_93)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 105

		@105
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_94
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

		@String.appendChar
		0;JMP

	(RETURN_94)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 110

		@110
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_95
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

		@String.appendChar
		0;JMP

	(RETURN_95)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 116

		@116
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_96
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

		@String.appendChar
		0;JMP

	(RETURN_96)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 101

		@101
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_97
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

		@String.appendChar
		0;JMP

	(RETURN_97)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 100

		@100
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_98
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

		@String.appendChar
		0;JMP

	(RETURN_98)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 58

		@58
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_99
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

		@String.appendChar
		0;JMP

	(RETURN_99)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// call Output.printString 1

		@RETURN_100
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

		@Output.printString
		0;JMP

	(RETURN_100)


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


// label WHILE_EXP92ac440596233d14

	(WHILE_EXP92ac440596233d14)


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


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// eq

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		D=D-M

		@SET_TRUE_7
		D;JEQ

		@SP
		A=M-1
		M=0

		@CONTINUE_7
		0;JEQ

	(SET_TRUE_7)
		@SP
		A=M-1
		M=-1

	(CONTINUE_7)


// not

		@SP
		A=M-1
		M=!M


// if-goto WHILE_END92ac440596233d14

		@SP
		M=M-1
		A=M
		D=M
		@WHILE_END92ac440596233d14
		D;JNE


// call Keyboard.keyPressed 0

		@RETURN_101
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

		@Keyboard.keyPressed
		0;JMP

	(RETURN_101)


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


// goto WHILE_EXP92ac440596233d14

		@WHILE_EXP92ac440596233d14
		0;JMP


// label WHILE_END92ac440596233d14

	(WHILE_END92ac440596233d14)


// label WHILE_EXP1611e0fd01cb2fcc

	(WHILE_EXP1611e0fd01cb2fcc)


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


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// eq

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		D=D-M

		@SET_TRUE_8
		D;JEQ

		@SP
		A=M-1
		M=0

		@CONTINUE_8
		0;JEQ

	(SET_TRUE_8)
		@SP
		A=M-1
		M=-1

	(CONTINUE_8)


// not

		@SP
		A=M-1
		M=!M


// not

		@SP
		A=M-1
		M=!M


// if-goto WHILE_END1611e0fd01cb2fcc

		@SP
		M=M-1
		A=M
		D=M
		@WHILE_END1611e0fd01cb2fcc
		D;JNE


// call Keyboard.keyPressed 0

		@RETURN_102
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

		@Keyboard.keyPressed
		0;JMP

	(RETURN_102)


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


// goto WHILE_EXP1611e0fd01cb2fcc

		@WHILE_EXP1611e0fd01cb2fcc
		0;JMP


// label WHILE_END1611e0fd01cb2fcc

	(WHILE_END1611e0fd01cb2fcc)


// push constant 2000

		@2000
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Sys.wait 1

		@RETURN_103
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

		@Sys.wait
		0;JMP

	(RETURN_103)


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


// call Output.println 0

		@RETURN_104
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

		@Output.println
		0;JMP

	(RETURN_104)


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


// push constant 45

		@45
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.new 1

		@RETURN_105
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

		@String.new
		0;JMP

	(RETURN_105)


// pop temp 3

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@3
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 84

		@84
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_106
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

		@String.appendChar
		0;JMP

	(RETURN_106)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 105

		@105
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_107
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

		@String.appendChar
		0;JMP

	(RETURN_107)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 109

		@109
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_108
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

		@String.appendChar
		0;JMP

	(RETURN_108)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 101

		@101
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_109
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

		@String.appendChar
		0;JMP

	(RETURN_109)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 32

		@32
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_110
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

		@String.appendChar
		0;JMP

	(RETURN_110)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 105

		@105
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_111
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

		@String.appendChar
		0;JMP

	(RETURN_111)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 115

		@115
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_112
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

		@String.appendChar
		0;JMP

	(RETURN_112)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 32

		@32
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_113
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

		@String.appendChar
		0;JMP

	(RETURN_113)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 117

		@117
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_114
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

		@String.appendChar
		0;JMP

	(RETURN_114)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 112

		@112
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_115
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

		@String.appendChar
		0;JMP

	(RETURN_115)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 46

		@46
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_116
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

		@String.appendChar
		0;JMP

	(RETURN_116)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 32

		@32
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_117
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

		@String.appendChar
		0;JMP

	(RETURN_117)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 77

		@77
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_118
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

		@String.appendChar
		0;JMP

	(RETURN_118)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 97

		@97
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_119
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

		@String.appendChar
		0;JMP

	(RETURN_119)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 107

		@107
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_120
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

		@String.appendChar
		0;JMP

	(RETURN_120)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 101

		@101
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_121
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

		@String.appendChar
		0;JMP

	(RETURN_121)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 32

		@32
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_122
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

		@String.appendChar
		0;JMP

	(RETURN_122)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 115

		@115
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_123
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

		@String.appendChar
		0;JMP

	(RETURN_123)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 117

		@117
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_124
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

		@String.appendChar
		0;JMP

	(RETURN_124)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 114

		@114
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_125
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

		@String.appendChar
		0;JMP

	(RETURN_125)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 101

		@101
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_126
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

		@String.appendChar
		0;JMP

	(RETURN_126)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 32

		@32
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_127
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

		@String.appendChar
		0;JMP

	(RETURN_127)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 116

		@116
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_128
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

		@String.appendChar
		0;JMP

	(RETURN_128)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 104

		@104
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_129
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

		@String.appendChar
		0;JMP

	(RETURN_129)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 97

		@97
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_130
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

		@String.appendChar
		0;JMP

	(RETURN_130)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 116

		@116
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_131
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

		@String.appendChar
		0;JMP

	(RETURN_131)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 32

		@32
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_132
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

		@String.appendChar
		0;JMP

	(RETURN_132)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 50

		@50
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_133
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

		@String.appendChar
		0;JMP

	(RETURN_133)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 32

		@32
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_134
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

		@String.appendChar
		0;JMP

	(RETURN_134)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 115

		@115
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_135
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

		@String.appendChar
		0;JMP

	(RETURN_135)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 101

		@101
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_136
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

		@String.appendChar
		0;JMP

	(RETURN_136)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 99

		@99
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_137
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

		@String.appendChar
		0;JMP

	(RETURN_137)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 111

		@111
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_138
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

		@String.appendChar
		0;JMP

	(RETURN_138)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 110

		@110
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_139
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

		@String.appendChar
		0;JMP

	(RETURN_139)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 100

		@100
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_140
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

		@String.appendChar
		0;JMP

	(RETURN_140)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 115

		@115
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_141
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

		@String.appendChar
		0;JMP

	(RETURN_141)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 32

		@32
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_142
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

		@String.appendChar
		0;JMP

	(RETURN_142)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 101

		@101
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_143
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

		@String.appendChar
		0;JMP

	(RETURN_143)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 108

		@108
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_144
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

		@String.appendChar
		0;JMP

	(RETURN_144)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 97

		@97
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_145
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

		@String.appendChar
		0;JMP

	(RETURN_145)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 112

		@112
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_146
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

		@String.appendChar
		0;JMP

	(RETURN_146)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 115

		@115
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_147
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

		@String.appendChar
		0;JMP

	(RETURN_147)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 101

		@101
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_148
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

		@String.appendChar
		0;JMP

	(RETURN_148)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 100

		@100
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_149
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

		@String.appendChar
		0;JMP

	(RETURN_149)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 46

		@46
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_150
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

		@String.appendChar
		0;JMP

	(RETURN_150)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// call Output.printString 1

		@RETURN_151
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

		@Output.printString
		0;JMP

	(RETURN_151)


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


// New file: Math.vm

// function Math.init 0

	(Math.init)
		@LCL
		A=M
	
		D=A
		@SP
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


// function Math.abs 0

	(Math.abs)
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


// push constant 0

		@0
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

		@SET_TRUE_9
		D;JLT

		@SP
		A=M-1
		M=0

		@CONTINUE_9
		0;JEQ

	(SET_TRUE_9)
		@SP
		A=M-1
		M=-1

	(CONTINUE_9)


// if-goto IF_TRUE346eb87c81b63cbd

		@SP
		M=M-1
		A=M
		D=M
		@IF_TRUE346eb87c81b63cbd
		D;JNE


// goto IF_FALSE346eb87c81b63cbd

		@IF_FALSE346eb87c81b63cbd
		0;JMP


// label IF_TRUE346eb87c81b63cbd

	(IF_TRUE346eb87c81b63cbd)


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


// neg

		@SP
		A=M-1
		M=-M


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


// label IF_FALSE346eb87c81b63cbd

	(IF_FALSE346eb87c81b63cbd)


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


// function Math.multiply 2

	(Math.multiply)
		@LCL
		A=M
	
		M=0
		A=A+1
	
		M=0
		A=A+1
	
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


// push constant 0

		@0
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

		@SET_TRUE_10
		D;JLT

		@SP
		A=M-1
		M=0

		@CONTINUE_10
		0;JEQ

	(SET_TRUE_10)
		@SP
		A=M-1
		M=-1

	(CONTINUE_10)


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


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// gt

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		D=M-D

		@SET_TRUE_11
		D;JGT

		@SP
		A=M-1
		M=0

		@CONTINUE_11
		0;JEQ

	(SET_TRUE_11)
		@SP
		A=M-1
		M=-1

	(CONTINUE_11)


// and

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		M=M&D


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


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// gt

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		D=M-D

		@SET_TRUE_12
		D;JGT

		@SP
		A=M-1
		M=0

		@CONTINUE_12
		0;JEQ

	(SET_TRUE_12)
		@SP
		A=M-1
		M=-1

	(CONTINUE_12)


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


// push constant 0

		@0
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

		@SET_TRUE_13
		D;JLT

		@SP
		A=M-1
		M=0

		@CONTINUE_13
		0;JEQ

	(SET_TRUE_13)
		@SP
		A=M-1
		M=-1

	(CONTINUE_13)


// and

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		M=M&D


// or

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		M=M|D


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


// call Math.abs 1

		@RETURN_152
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

		@Math.abs
		0;JMP

	(RETURN_152)


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


// call Math.abs 1

		@RETURN_153
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

		@Math.abs
		0;JMP

	(RETURN_153)


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


// label WHILE_EXPdc977d9e68ac165d

	(WHILE_EXPdc977d9e68ac165d)


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


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// gt

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		D=M-D

		@SET_TRUE_14
		D;JGT

		@SP
		A=M-1
		M=0

		@CONTINUE_14
		0;JEQ

	(SET_TRUE_14)
		@SP
		A=M-1
		M=-1

	(CONTINUE_14)


// not

		@SP
		A=M-1
		M=!M


// if-goto WHILE_ENDdc977d9e68ac165d

		@SP
		M=M-1
		A=M
		D=M
		@WHILE_ENDdc977d9e68ac165d
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


// goto WHILE_EXPdc977d9e68ac165d

		@WHILE_EXPdc977d9e68ac165d
		0;JMP


// label WHILE_ENDdc977d9e68ac165d

	(WHILE_ENDdc977d9e68ac165d)


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


// if-goto IF_TRUEc5bf026103cbbc1f

		@SP
		M=M-1
		A=M
		D=M
		@IF_TRUEc5bf026103cbbc1f
		D;JNE


// goto IF_FALSEc5bf026103cbbc1f

		@IF_FALSEc5bf026103cbbc1f
		0;JMP


// label IF_TRUEc5bf026103cbbc1f

	(IF_TRUEc5bf026103cbbc1f)


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


// neg

		@SP
		A=M-1
		M=-M


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


// label IF_FALSEc5bf026103cbbc1f

	(IF_FALSEc5bf026103cbbc1f)


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


// function Math.divide 2

	(Math.divide)
		@LCL
		A=M
	
		M=0
		A=A+1
	
		M=0
		A=A+1
	
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


// push constant 0

		@0
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

		@SET_TRUE_15
		D;JLT

		@SP
		A=M-1
		M=0

		@CONTINUE_15
		0;JEQ

	(SET_TRUE_15)
		@SP
		A=M-1
		M=-1

	(CONTINUE_15)


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


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// gt

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		D=M-D

		@SET_TRUE_16
		D;JGT

		@SP
		A=M-1
		M=0

		@CONTINUE_16
		0;JEQ

	(SET_TRUE_16)
		@SP
		A=M-1
		M=-1

	(CONTINUE_16)


// and

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		M=M&D


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


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// gt

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		D=M-D

		@SET_TRUE_17
		D;JGT

		@SP
		A=M-1
		M=0

		@CONTINUE_17
		0;JEQ

	(SET_TRUE_17)
		@SP
		A=M-1
		M=-1

	(CONTINUE_17)


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


// push constant 0

		@0
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

		@SET_TRUE_18
		D;JLT

		@SP
		A=M-1
		M=0

		@CONTINUE_18
		0;JEQ

	(SET_TRUE_18)
		@SP
		A=M-1
		M=-1

	(CONTINUE_18)


// and

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		M=M&D


// or

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		M=M|D


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


// call Math.abs 1

		@RETURN_154
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

		@Math.abs
		0;JMP

	(RETURN_154)


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


// call Math.abs 1

		@RETURN_155
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

		@Math.abs
		0;JMP

	(RETURN_155)


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


// label WHILE_EXPd6c2b63ad517d400

	(WHILE_EXPd6c2b63ad517d400)


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


// gt

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		D=M-D

		@SET_TRUE_19
		D;JGT

		@SP
		A=M-1
		M=0

		@CONTINUE_19
		0;JEQ

	(SET_TRUE_19)
		@SP
		A=M-1
		M=-1

	(CONTINUE_19)


// not

		@SP
		A=M-1
		M=!M


// if-goto WHILE_ENDd6c2b63ad517d400

		@SP
		M=M-1
		A=M
		D=M
		@WHILE_ENDd6c2b63ad517d400
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


// goto WHILE_EXPd6c2b63ad517d400

		@WHILE_EXPd6c2b63ad517d400
		0;JMP


// label WHILE_ENDd6c2b63ad517d400

	(WHILE_ENDd6c2b63ad517d400)


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


// if-goto IF_TRUE2a8a90e88ee3ece9

		@SP
		M=M-1
		A=M
		D=M
		@IF_TRUE2a8a90e88ee3ece9
		D;JNE


// goto IF_FALSE2a8a90e88ee3ece9

		@IF_FALSE2a8a90e88ee3ece9
		0;JMP


// label IF_TRUE2a8a90e88ee3ece9

	(IF_TRUE2a8a90e88ee3ece9)


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


// neg

		@SP
		A=M-1
		M=-M


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


// label IF_FALSE2a8a90e88ee3ece9

	(IF_FALSE2a8a90e88ee3ece9)


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


// function Math.mod 0

	(Math.mod)
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


// call Math.divide 2

		@RETURN_156
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

		@Math.divide
		0;JMP

	(RETURN_156)


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


// call Math.multiply 2

		@RETURN_157
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

		@Math.multiply
		0;JMP

	(RETURN_157)


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


// function Math.pow 1

	(Math.pow)
		@LCL
		A=M
	
		M=0
		A=A+1
	
		D=A
		@SP
		M=D


// push constant 1

		@1
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


// label WHILE_EXPb5204554c1c27ac8

	(WHILE_EXPb5204554c1c27ac8)


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


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// gt

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		D=M-D

		@SET_TRUE_20
		D;JGT

		@SP
		A=M-1
		M=0

		@CONTINUE_20
		0;JEQ

	(SET_TRUE_20)
		@SP
		A=M-1
		M=-1

	(CONTINUE_20)


// not

		@SP
		A=M-1
		M=!M


// if-goto WHILE_ENDb5204554c1c27ac8

		@SP
		M=M-1
		A=M
		D=M
		@WHILE_ENDb5204554c1c27ac8
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


// call Math.multiply 2

		@RETURN_158
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

		@Math.multiply
		0;JMP

	(RETURN_158)


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


// goto WHILE_EXPb5204554c1c27ac8

		@WHILE_EXPb5204554c1c27ac8
		0;JMP


// label WHILE_ENDb5204554c1c27ac8

	(WHILE_ENDb5204554c1c27ac8)


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


// function Math.sqrt 1

	(Math.sqrt)
		@LCL
		A=M
	
		M=0
		A=A+1
	
		D=A
		@SP
		M=D


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


// label WHILE_EXP95d38130fa7ecf57

	(WHILE_EXP95d38130fa7ecf57)


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


// push constant 2

		@2
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Math.pow 2

		@RETURN_159
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

		@Math.pow
		0;JMP

	(RETURN_159)


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


// lt

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		D=M-D

		@SET_TRUE_21
		D;JLT

		@SP
		A=M-1
		M=0

		@CONTINUE_21
		0;JEQ

	(SET_TRUE_21)
		@SP
		A=M-1
		M=-1

	(CONTINUE_21)


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


// push constant 181

		@181
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

		@SET_TRUE_22
		D;JLT

		@SP
		A=M-1
		M=0

		@CONTINUE_22
		0;JEQ

	(SET_TRUE_22)
		@SP
		A=M-1
		M=-1

	(CONTINUE_22)


// and

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		M=M&D


// not

		@SP
		A=M-1
		M=!M


// if-goto WHILE_END95d38130fa7ecf57

		@SP
		M=M-1
		A=M
		D=M
		@WHILE_END95d38130fa7ecf57
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


// goto WHILE_EXP95d38130fa7ecf57

		@WHILE_EXP95d38130fa7ecf57
		0;JMP


// label WHILE_END95d38130fa7ecf57

	(WHILE_END95d38130fa7ecf57)


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


// function Math.max 0

	(Math.max)
		@LCL
		A=M
	
		D=A
		@SP
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


// gt

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		D=M-D

		@SET_TRUE_23
		D;JGT

		@SP
		A=M-1
		M=0

		@CONTINUE_23
		0;JEQ

	(SET_TRUE_23)
		@SP
		A=M-1
		M=-1

	(CONTINUE_23)


// if-goto IF_TRUE7c0bd554cdb89b24

		@SP
		M=M-1
		A=M
		D=M
		@IF_TRUE7c0bd554cdb89b24
		D;JNE


// goto IF_FALSE7c0bd554cdb89b24

		@IF_FALSE7c0bd554cdb89b24
		0;JMP


// label IF_TRUE7c0bd554cdb89b24

	(IF_TRUE7c0bd554cdb89b24)


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


// label IF_FALSE7c0bd554cdb89b24

	(IF_FALSE7c0bd554cdb89b24)


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


// function Math.min 0

	(Math.min)
		@LCL
		A=M
	
		D=A
		@SP
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


// lt

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		D=M-D

		@SET_TRUE_24
		D;JLT

		@SP
		A=M-1
		M=0

		@CONTINUE_24
		0;JEQ

	(SET_TRUE_24)
		@SP
		A=M-1
		M=-1

	(CONTINUE_24)


// if-goto IF_TRUE52d894c9bb1f93e7

		@SP
		M=M-1
		A=M
		D=M
		@IF_TRUE52d894c9bb1f93e7
		D;JNE


// goto IF_FALSE52d894c9bb1f93e7

		@IF_FALSE52d894c9bb1f93e7
		0;JMP


// label IF_TRUE52d894c9bb1f93e7

	(IF_TRUE52d894c9bb1f93e7)


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


// label IF_FALSE52d894c9bb1f93e7

	(IF_FALSE52d894c9bb1f93e7)


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


// New file: Memory.vm

// function Memory.init 0

	(Memory.init)
		@LCL
		A=M
	
		D=A
		@SP
		M=D


// push constant 0

		@0
		D=A

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

		@Memory.0
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


// push constant 2048

		@2048
		D=A

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

		@Memory.1
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


// function Memory.peek 0

	(Memory.peek)
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


// push static 0

		@Memory.0
		
		D=A
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


// function Memory.poke 0

	(Memory.poke)
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


// push static 0

		@Memory.0
		
		D=A
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


// push temp 0

		@5
		
		D=M
		@0
		A=A+D
		D=M

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


// function Memory.alloc 1

	(Memory.alloc)
		@LCL
		A=M
	
		M=0
		A=A+1
	
		D=A
		@SP
		M=D


// push static 1

		@Memory.1
		
		D=A
		@0
		A=A+D
		D=M

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


// push static 1

		@Memory.1
		
		D=A
		@0
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
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


// add

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		M=M+D


// pop static 1

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@Memory.1
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


// function Memory.deAlloc 0

	(Memory.deAlloc)
		@LCL
		A=M
	
		D=A
		@SP
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


// New file: Output.vm

// function Output.init 0

	(Output.init)
		@LCL
		A=M
	
		D=A
		@SP
		M=D


// call Output.initMap 0

		@RETURN_160
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

		@Output.initMap
		0;JMP

	(RETURN_160)


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


// pop static 2

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@Output.2
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


// push constant 64

		@64
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// pop static 3

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@Output.3
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


// push static 2

		@Output.2
		
		D=A
		@0
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push static 3

		@Output.3
		
		D=A
		@0
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// call Math.multiply 2

		@RETURN_161
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

		@Math.multiply
		0;JMP

	(RETURN_161)


// call Array.new 1

		@RETURN_162
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

		@Array.new
		0;JMP

	(RETURN_162)


// pop static 1

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@Output.1
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


// pop static 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@Output.4
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


// function Output.initMap 1

	(Output.initMap)
		@LCL
		A=M
	
		M=0
		A=A+1
	
		D=A
		@SP
		M=D


// push constant 127

		@127
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Array.new 1

		@RETURN_163
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

		@Array.new
		0;JMP

	(RETURN_163)


// pop static 0

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@Output.0
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


// push constant 63

		@63
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 63

		@63
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 63

		@63
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 63

		@63
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 63

		@63
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 63

		@63
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 63

		@63
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 63

		@63
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 63

		@63
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_164
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_164)


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


// push constant 32

		@32
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_165
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_165)


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


// push constant 33

		@33
		D=A

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


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

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


// push constant 12

		@12
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

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


// push constant 12

		@12
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_166
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_166)


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


// push constant 34

		@34
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 54

		@54
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 54

		@54
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 20

		@20
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_167
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_167)


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


// push constant 35

		@35
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 18

		@18
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 18

		@18
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 63

		@63
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 18

		@18
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 18

		@18
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 63

		@63
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 18

		@18
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 18

		@18
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_168
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_168)


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


// push constant 36

		@36
		D=A

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


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 3

		@3
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 48

		@48
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

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


// push constant 12

		@12
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_169
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_169)


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


// push constant 37

		@37
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 35

		@35
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 24

		@24
		D=A

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


// push constant 6

		@6
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 49

		@49
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_170
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_170)


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


// push constant 38

		@38
		D=A

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


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

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


// push constant 54

		@54
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 27

		@27
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 27

		@27
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 27

		@27
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 54

		@54
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_171
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_171)


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


// push constant 39

		@39
		D=A

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


// push constant 12

		@12
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 6

		@6
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_172
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_172)


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


// push constant 40

		@40
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 24

		@24
		D=A

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


// push constant 6

		@6
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 6

		@6
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 6

		@6
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 6

		@6
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 6

		@6
		D=A

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


// push constant 24

		@24
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_173
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_173)


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


// push constant 41

		@41
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 6

		@6
		D=A

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


// push constant 24

		@24
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 24

		@24
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 24

		@24
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 24

		@24
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 24

		@24
		D=A

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


// push constant 6

		@6
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_174
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_174)


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


// push constant 42

		@42
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 63

		@63
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_175
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_175)


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


// push constant 43

		@43
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

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


// push constant 12

		@12
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 63

		@63
		D=A

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


// push constant 12

		@12
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_176
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_176)


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


// push constant 44

		@44
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

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


// push constant 12

		@12
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 6

		@6
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_177
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_177)


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


// push constant 45

		@45
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 63

		@63
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_178
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_178)


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


// push constant 46

		@46
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

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


// push constant 12

		@12
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_179
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_179)


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


// push constant 47

		@47
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 32

		@32
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 48

		@48
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 24

		@24
		D=A

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


// push constant 6

		@6
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 3

		@3
		D=A

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


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_180
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_180)


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


// push constant 48

		@48
		D=A

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


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

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


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_181
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_181)


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


// push constant 49

		@49
		D=A

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


// push constant 14

		@14
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


// push constant 12

		@12
		D=A

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


// push constant 12

		@12
		D=A

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


// push constant 12

		@12
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 63

		@63
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_182
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_182)


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


// push constant 50

		@50
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 48

		@48
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 24

		@24
		D=A

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


// push constant 6

		@6
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 3

		@3
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 63

		@63
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_183
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_183)


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


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 48

		@48
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 48

		@48
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 28

		@28
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 48

		@48
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 48

		@48
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_184
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_184)


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


// push constant 52

		@52
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 16

		@16
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 24

		@24
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 28

		@28
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 26

		@26
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 25

		@25
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 63

		@63
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 24

		@24
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 24

		@24
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 60

		@60
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_185
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_185)


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


// push constant 53

		@53
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 63

		@63
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 3

		@3
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 3

		@3
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 31

		@31
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 48

		@48
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 48

		@48
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 48

		@48
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_186
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_186)


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


// push constant 54

		@54
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 28

		@28
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 6

		@6
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 3

		@3
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 3

		@3
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 31

		@31
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_187
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_187)


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


// push constant 55

		@55
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 63

		@63
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 49

		@49
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 48

		@48
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 48

		@48
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 24

		@24
		D=A

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


// push constant 12

		@12
		D=A

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


// push constant 12

		@12
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_188
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_188)


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


// push constant 56

		@56
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_189
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_189)


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


// push constant 57

		@57
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 62

		@62
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 48

		@48
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 48

		@48
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 24

		@24
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 14

		@14
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_190
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_190)


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


// push constant 58

		@58
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

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


// push constant 12

		@12
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

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


// push constant 12

		@12
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_191
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_191)


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


// push constant 59

		@59
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

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


// push constant 12

		@12
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

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


// push constant 12

		@12
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 6

		@6
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_192
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_192)


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


// push constant 60

		@60
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 24

		@24
		D=A

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


// push constant 6

		@6
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 3

		@3
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 6

		@6
		D=A

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


// push constant 24

		@24
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_193
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_193)


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


// push constant 61

		@61
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 63

		@63
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 63

		@63
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_194
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_194)


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


// push constant 62

		@62
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 3

		@3
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 6

		@6
		D=A

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


// push constant 24

		@24
		D=A

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


// push constant 6

		@6
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 3

		@3
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_195
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_195)


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


// push constant 64

		@64
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 59

		@59
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 59

		@59
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 59

		@59
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 27

		@27
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 3

		@3
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_196
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_196)


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


// push constant 63

		@63
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 24

		@24
		D=A

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


// push constant 12

		@12
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

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


// push constant 12

		@12
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_197
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_197)


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


// push constant 65

		@65
		D=A

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


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 63

		@63
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_198
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_198)


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


// push constant 66

		@66
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 31

		@31
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 31

		@31
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 31

		@31
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_199
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_199)


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


// push constant 67

		@67
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 28

		@28
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 54

		@54
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 35

		@35
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 3

		@3
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 3

		@3
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 3

		@3
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 35

		@35
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 54

		@54
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 28

		@28
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_200
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_200)


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


// push constant 68

		@68
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


// push constant 27

		@27
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 27

		@27
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


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_201
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_201)


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


// push constant 69

		@69
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 63

		@63
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 35

		@35
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 11

		@11
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


// push constant 11

		@11
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 35

		@35
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 63

		@63
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_202
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_202)


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


// push constant 70

		@70
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 63

		@63
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 35

		@35
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 11

		@11
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


// push constant 11

		@11
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 3

		@3
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 3

		@3
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 3

		@3
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_203
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_203)


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


// push constant 71

		@71
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 28

		@28
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 54

		@54
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 35

		@35
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 3

		@3
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 59

		@59
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 54

		@54
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 44

		@44
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_204
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_204)


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


// push constant 72

		@72
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 63

		@63
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_205
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_205)


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


// push constant 73

		@73
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

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


// push constant 12

		@12
		D=A

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


// push constant 12

		@12
		D=A

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


// push constant 12

		@12
		D=A

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


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_206
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_206)


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


// push constant 74

		@74
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 60

		@60
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 24

		@24
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 24

		@24
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 24

		@24
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 24

		@24
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 24

		@24
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 27

		@27
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 27

		@27
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 14

		@14
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_207
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_207)


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


// push constant 75

		@75
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 27

		@27
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


// push constant 27

		@27
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_208
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_208)


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


// push constant 76

		@76
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 3

		@3
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 3

		@3
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 3

		@3
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 3

		@3
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 3

		@3
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 3

		@3
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 35

		@35
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 63

		@63
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_209
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_209)


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


// push constant 77

		@77
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 33

		@33
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 63

		@63
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 63

		@63
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_210
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_210)


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


// push constant 78

		@78
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 55

		@55
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 55

		@55
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 63

		@63
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 59

		@59
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 59

		@59
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_211
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_211)


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


// push constant 79

		@79
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_212
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_212)


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


// push constant 80

		@80
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 31

		@31
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 31

		@31
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 3

		@3
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 3

		@3
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 3

		@3
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 3

		@3
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_213
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_213)


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


// push constant 81

		@81
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 63

		@63
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 59

		@59
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 48

		@48
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_214
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_214)


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


// push constant 82

		@82
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 31

		@31
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 31

		@31
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 27

		@27
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_215
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_215)


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


// push constant 83

		@83
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 6

		@6
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 28

		@28
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 48

		@48
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_216
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_216)


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


// push constant 84

		@84
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 63

		@63
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 63

		@63
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


// push constant 12

		@12
		D=A

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


// push constant 12

		@12
		D=A

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


// push constant 12

		@12
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_217
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_217)


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


// push constant 85

		@85
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_218
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_218)


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


// push constant 86

		@86
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

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


// push constant 12

		@12
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_219
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_219)


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


// push constant 87

		@87
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 63

		@63
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 63

		@63
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 63

		@63
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 18

		@18
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_220
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_220)


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


// push constant 88

		@88
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

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


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_221
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_221)


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


// push constant 89

		@89
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

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


// push constant 12

		@12
		D=A

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


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_222
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_222)


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


// push constant 90

		@90
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 63

		@63
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 49

		@49
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 24

		@24
		D=A

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


// push constant 6

		@6
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 35

		@35
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 63

		@63
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_223
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_223)


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


// push constant 91

		@91
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 6

		@6
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 6

		@6
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 6

		@6
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 6

		@6
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 6

		@6
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 6

		@6
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 6

		@6
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_224
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_224)


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


// push constant 92

		@92
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

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


// push constant 3

		@3
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 6

		@6
		D=A

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


// push constant 24

		@24
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 48

		@48
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 32

		@32
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_225
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_225)


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


// push constant 93

		@93
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 24

		@24
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 24

		@24
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 24

		@24
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 24

		@24
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 24

		@24
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 24

		@24
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 24

		@24
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_226
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_226)


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


// push constant 94

		@94
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


// push constant 28

		@28
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 54

		@54
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_227
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_227)


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


// push constant 95

		@95
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 63

		@63
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_228
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_228)


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


// push constant 96

		@96
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 6

		@6
		D=A

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


// push constant 24

		@24
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_229
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_229)


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


// push constant 97

		@97
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 14

		@14
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 24

		@24
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 27

		@27
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 27

		@27
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 54

		@54
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_230
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_230)


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


// push constant 98

		@98
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 3

		@3
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 3

		@3
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 3

		@3
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


// push constant 27

		@27
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_231
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_231)


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


// push constant 99

		@99
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 3

		@3
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 3

		@3
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_232
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_232)


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


// push constant 100

		@100
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 48

		@48
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 48

		@48
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 48

		@48
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 60

		@60
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 54

		@54
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_233
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_233)


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


// push constant 101

		@101
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 63

		@63
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 3

		@3
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_234
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_234)


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


// push constant 102

		@102
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 28

		@28
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 54

		@54
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 38

		@38
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 6

		@6
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


// push constant 6

		@6
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 6

		@6
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 6

		@6
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


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_235
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_235)


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


// push constant 103

		@103
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 62

		@62
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 48

		@48
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_236
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_236)


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


// push constant 104

		@104
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 3

		@3
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 3

		@3
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 3

		@3
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 27

		@27
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 55

		@55
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_237
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_237)


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


// push constant 105

		@105
		D=A

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


// push constant 12

		@12
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 14

		@14
		D=A

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


// push constant 12

		@12
		D=A

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


// push constant 12

		@12
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_238
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_238)


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


// push constant 106

		@106
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 48

		@48
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 48

		@48
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 56

		@56
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 48

		@48
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 48

		@48
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 48

		@48
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 48

		@48
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_239
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_239)


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


// push constant 107

		@107
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 3

		@3
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 3

		@3
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 3

		@3
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 27

		@27
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


// push constant 15

		@15
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 27

		@27
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_240
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_240)


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


// push constant 108

		@108
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 14

		@14
		D=A

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


// push constant 12

		@12
		D=A

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


// push constant 12

		@12
		D=A

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


// push constant 12

		@12
		D=A

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


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_241
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_241)


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


// push constant 109

		@109
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 29

		@29
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 63

		@63
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 43

		@43
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 43

		@43
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 43

		@43
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 43

		@43
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_242
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_242)


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


// push constant 110

		@110
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 29

		@29
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_243
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_243)


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


// push constant 111

		@111
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_244
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_244)


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


// push constant 112

		@112
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 31

		@31
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 3

		@3
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 3

		@3
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_245
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_245)


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


// push constant 113

		@113
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 62

		@62
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 48

		@48
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 48

		@48
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_246
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_246)


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


// push constant 114

		@114
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 29

		@29
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 55

		@55
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 3

		@3
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 3

		@3
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 7

		@7
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_247
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_247)


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


// push constant 115

		@115
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 6

		@6
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 24

		@24
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_248
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_248)


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


// push constant 116

		@116
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 4

		@4
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 6

		@6
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 6

		@6
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


// push constant 6

		@6
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 6

		@6
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 6

		@6
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 54

		@54
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 28

		@28
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_249
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_249)


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


// push constant 117

		@117
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 27

		@27
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 27

		@27
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 27

		@27
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 27

		@27
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 27

		@27
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 54

		@54
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_250
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_250)


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


// push constant 118

		@118
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

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


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_251
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_251)


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


// push constant 119

		@119
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 63

		@63
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 63

		@63
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 18

		@18
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_252
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_252)


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


// push constant 120

		@120
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

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


// push constant 12

		@12
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 30

		@30
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_253
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_253)


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


// push constant 121

		@121
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 62

		@62
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 48

		@48
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 24

		@24
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


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_254
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_254)


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


// push constant 122

		@122
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 63

		@63
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 27

		@27
		D=A

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


// push constant 6

		@6
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 51

		@51
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 63

		@63
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_255
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_255)


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


// push constant 123

		@123
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 56

		@56
		D=A

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


// push constant 12

		@12
		D=A

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


// push constant 7

		@7
		D=A

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


// push constant 12

		@12
		D=A

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


// push constant 56

		@56
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_256
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_256)


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


// push constant 124

		@124
		D=A

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


// push constant 12

		@12
		D=A

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


// push constant 12

		@12
		D=A

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


// push constant 12

		@12
		D=A

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


// push constant 12

		@12
		D=A

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


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_257
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_257)


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


// push constant 125

		@125
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 7

		@7
		D=A

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


// push constant 12

		@12
		D=A

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


// push constant 56

		@56
		D=A

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


// push constant 12

		@12
		D=A

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


// push constant 7

		@7
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_258
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_258)


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


// push constant 126

		@126
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 38

		@38
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


// push constant 25

		@25
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.create 12

		@RETURN_259
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
		@12
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Output.create
		0;JMP

	(RETURN_259)


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


// function Output.create 1

	(Output.create)
		@LCL
		A=M
	
		M=0
		A=A+1
	
		D=A
		@SP
		M=D


// push constant 11

		@11
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Array.new 1

		@RETURN_260
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

		@Array.new
		0;JMP

	(RETURN_260)


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


// push static 0

		@Output.0
		
		D=A
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


// push temp 0

		@5
		
		D=M
		@0
		A=A+D
		D=M

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


// push constant 0

		@0
		D=A

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


// push temp 0

		@5
		
		D=M
		@0
		A=A+D
		D=M

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


// push argument 2

		@ARG
		
		D=M
		@2
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


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


// push temp 0

		@5
		
		D=M
		@0
		A=A+D
		D=M

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


// push constant 2

		@2
		D=A

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


// push argument 3

		@ARG
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


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


// push temp 0

		@5
		
		D=M
		@0
		A=A+D
		D=M

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


// push constant 3

		@3
		D=A

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


// push argument 4

		@ARG
		
		D=M
		@4
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


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


// push temp 0

		@5
		
		D=M
		@0
		A=A+D
		D=M

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


// push constant 4

		@4
		D=A

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


// push argument 5

		@ARG
		
		D=M
		@5
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


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


// push temp 0

		@5
		
		D=M
		@0
		A=A+D
		D=M

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


// push constant 5

		@5
		D=A

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


// push argument 6

		@ARG
		
		D=M
		@6
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


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


// push temp 0

		@5
		
		D=M
		@0
		A=A+D
		D=M

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


// push constant 6

		@6
		D=A

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


// push argument 7

		@ARG
		
		D=M
		@7
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


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


// push temp 0

		@5
		
		D=M
		@0
		A=A+D
		D=M

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


// push constant 7

		@7
		D=A

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


// push argument 8

		@ARG
		
		D=M
		@8
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


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


// push temp 0

		@5
		
		D=M
		@0
		A=A+D
		D=M

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


// push constant 8

		@8
		D=A

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


// push argument 9

		@ARG
		
		D=M
		@9
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


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


// push temp 0

		@5
		
		D=M
		@0
		A=A+D
		D=M

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


// push constant 9

		@9
		D=A

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


// push argument 10

		@ARG
		
		D=M
		@10
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


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


// push temp 0

		@5
		
		D=M
		@0
		A=A+D
		D=M

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


// push constant 10

		@10
		D=A

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


// push argument 11

		@ARG
		
		D=M
		@11
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


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


// push temp 0

		@5
		
		D=M
		@0
		A=A+D
		D=M

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


// function Output.getMap 0

	(Output.getMap)
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


// push constant 32

		@32
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

		@SET_TRUE_25
		D;JLT

		@SP
		A=M-1
		M=0

		@CONTINUE_25
		0;JEQ

	(SET_TRUE_25)
		@SP
		A=M-1
		M=-1

	(CONTINUE_25)


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


// push constant 126

		@126
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// gt

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		D=M-D

		@SET_TRUE_26
		D;JGT

		@SP
		A=M-1
		M=0

		@CONTINUE_26
		0;JEQ

	(SET_TRUE_26)
		@SP
		A=M-1
		M=-1

	(CONTINUE_26)


// or

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		M=M|D


// if-goto IF_TRUE997afe5593ef3301

		@SP
		M=M-1
		A=M
		D=M
		@IF_TRUE997afe5593ef3301
		D;JNE


// goto IF_FALSE997afe5593ef3301

		@IF_FALSE997afe5593ef3301
		0;JMP


// label IF_TRUE997afe5593ef3301

	(IF_TRUE997afe5593ef3301)


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


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


// label IF_FALSE997afe5593ef3301

	(IF_FALSE997afe5593ef3301)


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


// push static 0

		@Output.0
		
		D=A
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


// function Output.pokeMsb 2

	(Output.pokeMsb)
		@LCL
		A=M
	
		M=0
		A=A+1
	
		M=0
		A=A+1
	
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


// call Memory.peek 1

		@RETURN_261
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

		@Memory.peek
		0;JMP

	(RETURN_261)


// push constant 255

		@255
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// and

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		M=M&D


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


// push constant 256

		@256
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Math.multiply 2

		@RETURN_262
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

		@Math.multiply
		0;JMP

	(RETURN_262)


// or

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		M=M|D


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


// call Memory.poke 2

		@RETURN_263
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

		@Memory.poke
		0;JMP

	(RETURN_263)


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


// function Output.pokeLsb 2

	(Output.pokeLsb)
		@LCL
		A=M
	
		M=0
		A=A+1
	
		M=0
		A=A+1
	
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


// call Memory.peek 1

		@RETURN_264
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

		@Memory.peek
		0;JMP

	(RETURN_264)


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// not

		@SP
		A=M-1
		M=!M


// push constant 255

		@255
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


// and

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		M=M&D


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


// push constant 255

		@255
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// and

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		M=M&D


// or

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		M=M|D


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


// call Memory.poke 2

		@RETURN_265
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

		@Memory.poke
		0;JMP

	(RETURN_265)


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


// function Output.cursorToAddress 2

	(Output.cursorToAddress)
		@LCL
		A=M
	
		M=0
		A=A+1
	
		M=0
		A=A+1
	
		D=A
		@SP
		M=D


// push static 4

		@Output.4
		
		D=A
		@0
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push static 3

		@Output.3
		
		D=A
		@0
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// call Math.mod 2

		@RETURN_266
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

		@Math.mod
		0;JMP

	(RETURN_266)


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


// push static 4

		@Output.4
		
		D=A
		@0
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push static 3

		@Output.3
		
		D=A
		@0
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// call Math.divide 2

		@RETURN_267
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

		@Math.divide
		0;JMP

	(RETURN_267)


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


// push constant 16384

		@16384
		D=A

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


// push constant 11

		@11
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Math.multiply 2

		@RETURN_268
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

		@Math.multiply
		0;JMP

	(RETURN_268)


// push constant 32

		@32
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Math.multiply 2

		@RETURN_269
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

		@Math.multiply
		0;JMP

	(RETURN_269)


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


// push constant 2

		@2
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Math.divide 2

		@RETURN_270
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

		@Math.divide
		0;JMP

	(RETURN_270)


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


// function Output.drawCursor 0

	(Output.drawCursor)
		@LCL
		A=M
	
		D=A
		@SP
		M=D


// push constant 95

		@95
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.addChar 1

		@RETURN_271
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

		@Output.addChar
		0;JMP

	(RETURN_271)


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


// call Output.flipChar 0

		@RETURN_272
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

		@Output.flipChar
		0;JMP

	(RETURN_272)


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


// function Output.clearCursor 0

	(Output.clearCursor)
		@LCL
		A=M
	
		D=A
		@SP
		M=D


// push constant 32

		@32
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Output.addChar 1

		@RETURN_273
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

		@Output.addChar
		0;JMP

	(RETURN_273)


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


// call Output.flipChar 0

		@RETURN_274
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

		@Output.flipChar
		0;JMP

	(RETURN_274)


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


// function Output.flipChar 6

	(Output.flipChar)
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
	
		M=0
		A=A+1
	
		D=A
		@SP
		M=D


// push static 4

		@Output.4
		
		D=A
		@0
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push static 1

		@Output.1
		
		D=A
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


// call Output.getMap 1

		@RETURN_275
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

		@Output.getMap
		0;JMP

	(RETURN_275)


// pop local 5

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@LCL
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


// call Output.cursorToAddress 0

		@RETURN_276
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

		@Output.cursorToAddress
		0;JMP

	(RETURN_276)


// pop local 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@LCL
		D=M

		@4
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


// label WHILE_EXP4bcc3a3d23513b24

	(WHILE_EXP4bcc3a3d23513b24)


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


// push constant 11

		@11
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

		@SET_TRUE_27
		D;JLT

		@SP
		A=M-1
		M=0

		@CONTINUE_27
		0;JEQ

	(SET_TRUE_27)
		@SP
		A=M-1
		M=-1

	(CONTINUE_27)


// not

		@SP
		A=M-1
		M=!M


// if-goto WHILE_END4bcc3a3d23513b24

		@SP
		M=M-1
		A=M
		D=M
		@WHILE_END4bcc3a3d23513b24
		D;JNE


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


// push local 5

		@LCL
		
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


// push static 4

		@Output.4
		
		D=A
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


// call Math.mod 2

		@RETURN_277
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

		@Math.mod
		0;JMP

	(RETURN_277)


// push constant 1

		@1
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// eq

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		D=D-M

		@SET_TRUE_28
		D;JEQ

		@SP
		A=M-1
		M=0

		@CONTINUE_28
		0;JEQ

	(SET_TRUE_28)
		@SP
		A=M-1
		M=-1

	(CONTINUE_28)


// if-goto IF_TRUE4bd0fb20bb919000

		@SP
		M=M-1
		A=M
		D=M
		@IF_TRUE4bd0fb20bb919000
		D;JNE


// goto IF_FALSE4bd0fb20bb919000

		@IF_FALSE4bd0fb20bb919000
		0;JMP


// label IF_TRUE4bd0fb20bb919000

	(IF_TRUE4bd0fb20bb919000)


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


// call Output.pokeMsb 2

		@RETURN_278
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

		@Output.pokeMsb
		0;JMP

	(RETURN_278)


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


// goto IF_END4bd0fb20bb919000

		@IF_END4bd0fb20bb919000
		0;JMP


// label IF_FALSE4bd0fb20bb919000

	(IF_FALSE4bd0fb20bb919000)


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


// call Output.pokeLsb 2

		@RETURN_279
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

		@Output.pokeLsb
		0;JMP

	(RETURN_279)


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


// label IF_END4bd0fb20bb919000

	(IF_END4bd0fb20bb919000)


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


// push constant 32

		@32
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


// pop local 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@LCL
		D=M

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
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


// goto WHILE_EXP4bcc3a3d23513b24

		@WHILE_EXP4bcc3a3d23513b24
		0;JMP


// label WHILE_END4bcc3a3d23513b24

	(WHILE_END4bcc3a3d23513b24)


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


// function Output.addChar 0

	(Output.addChar)
		@LCL
		A=M
	
		D=A
		@SP
		M=D


// push static 4

		@Output.4
		
		D=A
		@0
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push static 1

		@Output.1
		
		D=A
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


// push temp 0

		@5
		
		D=M
		@0
		A=A+D
		D=M

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


// function Output.moveCursor 0

	(Output.moveCursor)
		@LCL
		A=M
	
		D=A
		@SP
		M=D


// call Output.clearCursor 0

		@RETURN_280
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

		@Output.clearCursor
		0;JMP

	(RETURN_280)


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


// push static 3

		@Output.3
		
		D=A
		@0
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// call Math.multiply 2

		@RETURN_281
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

		@Math.multiply
		0;JMP

	(RETURN_281)


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


// add

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		M=M+D


// pop static 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@Output.4
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


// call Output.drawCursor 0

		@RETURN_282
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

		@Output.drawCursor
		0;JMP

	(RETURN_282)


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


// function Output.printChar 0

	(Output.printChar)
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


// call Output.addChar 1

		@RETURN_283
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

		@Output.addChar
		0;JMP

	(RETURN_283)


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


// call Output.flipChar 0

		@RETURN_284
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

		@Output.flipChar
		0;JMP

	(RETURN_284)


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


// push static 4

		@Output.4
		
		D=A
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


// add

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		M=M+D


// push constant 1472

		@1472
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Math.mod 2

		@RETURN_285
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

		@Math.mod
		0;JMP

	(RETURN_285)


// pop static 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@Output.4
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


// not

		@SP
		A=M-1
		M=!M


// call Output.drawCursor 1

		@RETURN_286
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

		@Output.drawCursor
		0;JMP

	(RETURN_286)


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


// function Output.printString 1

	(Output.printString)
		@LCL
		A=M
	
		M=0
		A=A+1
	
		D=A
		@SP
		M=D


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


// label WHILE_EXP83bbb4a48ebedfa6

	(WHILE_EXP83bbb4a48ebedfa6)


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


// call String.length 1

		@RETURN_287
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

		@String.length
		0;JMP

	(RETURN_287)


// lt

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		D=M-D

		@SET_TRUE_29
		D;JLT

		@SP
		A=M-1
		M=0

		@CONTINUE_29
		0;JEQ

	(SET_TRUE_29)
		@SP
		A=M-1
		M=-1

	(CONTINUE_29)


// not

		@SP
		A=M-1
		M=!M


// if-goto WHILE_END83bbb4a48ebedfa6

		@SP
		M=M-1
		A=M
		D=M
		@WHILE_END83bbb4a48ebedfa6
		D;JNE


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


// call String.charAt 2

		@RETURN_288
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

		@String.charAt
		0;JMP

	(RETURN_288)


// call Output.printChar 1

		@RETURN_289
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

		@Output.printChar
		0;JMP

	(RETURN_289)


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


// goto WHILE_EXP83bbb4a48ebedfa6

		@WHILE_EXP83bbb4a48ebedfa6
		0;JMP


// label WHILE_END83bbb4a48ebedfa6

	(WHILE_END83bbb4a48ebedfa6)


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


// function Output.printInt 1

	(Output.printInt)
		@LCL
		A=M
	
		M=0
		A=A+1
	
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


// call String.new 1

		@RETURN_290
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

		@String.new
		0;JMP

	(RETURN_290)


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


// call String.setInt 2

		@RETURN_291
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

		@String.setInt
		0;JMP

	(RETURN_291)


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


// call Output.printString 1

		@RETURN_292
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

		@Output.printString
		0;JMP

	(RETURN_292)


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


// function Output.println 0

	(Output.println)
		@LCL
		A=M
	
		D=A
		@SP
		M=D


// call Output.clearCursor 0

		@RETURN_293
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

		@Output.clearCursor
		0;JMP

	(RETURN_293)


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


// push static 4

		@Output.4
		
		D=A
		@0
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push static 3

		@Output.3
		
		D=A
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


// push static 4

		@Output.4
		
		D=A
		@0
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push static 3

		@Output.3
		
		D=A
		@0
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// call Math.mod 2

		@RETURN_294
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

		@Math.mod
		0;JMP

	(RETURN_294)


// sub

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		M=M-D


// pop static 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@Output.4
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


// push static 4

		@Output.4
		
		D=A
		@0
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 1472

		@1472
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Math.mod 2

		@RETURN_295
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

		@Math.mod
		0;JMP

	(RETURN_295)


// pop static 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@Output.4
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


// call Output.drawCursor 0

		@RETURN_296
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

		@Output.drawCursor
		0;JMP

	(RETURN_296)


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


// function Output.backSpace 0

	(Output.backSpace)
		@LCL
		A=M
	
		D=A
		@SP
		M=D


// call Output.clearCursor 0

		@RETURN_297
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

		@Output.clearCursor
		0;JMP

	(RETURN_297)


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


// push static 4

		@Output.4
		
		D=A
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


// push constant 1472

		@1472
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Math.mod 2

		@RETURN_298
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

		@Math.mod
		0;JMP

	(RETURN_298)


// pop static 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@Output.4
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


// call Output.drawCursor 0

		@RETURN_299
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

		@Output.drawCursor
		0;JMP

	(RETURN_299)


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


// New file: Screen.vm

// function Screen.init 0

	(Screen.init)
		@LCL
		A=M
	
		D=A
		@SP
		M=D


// push constant 16384

		@16384
		D=A

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

		@Screen.0
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


// push constant 256

		@256
		D=A

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

		@Screen.1
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


// push constant 512

		@512
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// pop static 2

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@Screen.2
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


// push constant 16

		@16
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// pop static 3

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@Screen.3
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


// push constant 8096

		@8096
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// pop static 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@Screen.4
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


// not

		@SP
		A=M-1
		M=!M


// pop static 5

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@Screen.5
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


// function Screen.clearScreen 1

	(Screen.clearScreen)
		@LCL
		A=M
	
		M=0
		A=A+1
	
		D=A
		@SP
		M=D


// push static 0

		@Screen.0
		
		D=A
		@0
		A=A+D
		D=M

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


// label WHILE_EXP3c094883f2a5a888

	(WHILE_EXP3c094883f2a5a888)


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


// push static 0

		@Screen.0
		
		D=A
		@0
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push static 4

		@Screen.4
		
		D=A
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


// lt

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		D=M-D

		@SET_TRUE_30
		D;JLT

		@SP
		A=M-1
		M=0

		@CONTINUE_30
		0;JEQ

	(SET_TRUE_30)
		@SP
		A=M-1
		M=-1

	(CONTINUE_30)


// not

		@SP
		A=M-1
		M=!M


// if-goto WHILE_END3c094883f2a5a888

		@SP
		M=M-1
		A=M
		D=M
		@WHILE_END3c094883f2a5a888
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


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Memory.poke 2

		@RETURN_300
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

		@Memory.poke
		0;JMP

	(RETURN_300)


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


// goto WHILE_EXP3c094883f2a5a888

		@WHILE_EXP3c094883f2a5a888
		0;JMP


// label WHILE_END3c094883f2a5a888

	(WHILE_END3c094883f2a5a888)


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


// function Screen.setColor 0

	(Screen.setColor)
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


// pop static 5

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@Screen.5
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


// function Screen.drawPixel 5

	(Screen.drawPixel)
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


// push static 0

		@Screen.0
		
		D=A
		@0
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
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


// push constant 32

		@32
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Math.multiply 2

		@RETURN_301
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

		@Math.multiply
		0;JMP

	(RETURN_301)


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


// push constant 16

		@16
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Math.divide 2

		@RETURN_302
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

		@Math.divide
		0;JMP

	(RETURN_302)


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


// push constant 16

		@16
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Math.mod 2

		@RETURN_303
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

		@Math.mod
		0;JMP

	(RETURN_303)


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


// push constant 2

		@2
		D=A

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


// call Math.pow 2

		@RETURN_304
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

		@Math.pow
		0;JMP

	(RETURN_304)


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


// call Memory.peek 1

		@RETURN_305
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

		@Memory.peek
		0;JMP

	(RETURN_305)


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


// push static 5

		@Screen.5
		
		D=A
		@0
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// if-goto IF_TRUE77134f4beaf25e0f

		@SP
		M=M-1
		A=M
		D=M
		@IF_TRUE77134f4beaf25e0f
		D;JNE


// goto IF_FALSE77134f4beaf25e0f

		@IF_FALSE77134f4beaf25e0f
		0;JMP


// label IF_TRUE77134f4beaf25e0f

	(IF_TRUE77134f4beaf25e0f)


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


// or

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		M=M|D


// pop local 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@LCL
		D=M

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// goto IF_END77134f4beaf25e0f

		@IF_END77134f4beaf25e0f
		0;JMP


// label IF_FALSE77134f4beaf25e0f

	(IF_FALSE77134f4beaf25e0f)


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


// not

		@SP
		A=M-1
		M=!M


// and

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		M=M&D


// pop local 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@LCL
		D=M

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// label IF_END77134f4beaf25e0f

	(IF_END77134f4beaf25e0f)


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


// call Memory.poke 2

		@RETURN_306
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

		@Memory.poke
		0;JMP

	(RETURN_306)


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


// function Screen.drawLine 11

	(Screen.drawLine)
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
	
		M=0
		A=A+1
	
		D=A
		@SP
		M=D


// push argument 2

		@ARG
		
		D=M
		@2
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
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


// sub

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		M=M-D


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


// push argument 3

		@ARG
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
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


// sub

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		M=M-D


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


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// gt

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		D=M-D

		@SET_TRUE_31
		D;JGT

		@SP
		A=M-1
		M=0

		@CONTINUE_31
		0;JEQ

	(SET_TRUE_31)
		@SP
		A=M-1
		M=-1

	(CONTINUE_31)


// pop local 9

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@LCL
		D=M

		@9
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
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


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// gt

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		D=M-D

		@SET_TRUE_32
		D;JGT

		@SP
		A=M-1
		M=0

		@CONTINUE_32
		0;JEQ

	(SET_TRUE_32)
		@SP
		A=M-1
		M=-1

	(CONTINUE_32)


// pop local 10

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@LCL
		D=M

		@10
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


// call Math.abs 1

		@RETURN_307
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

		@Math.abs
		0;JMP

	(RETURN_307)


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


// call Math.abs 1

		@RETURN_308
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

		@Math.abs
		0;JMP

	(RETURN_308)


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


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// pop local 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@LCL
		D=M

		@4
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


// pop local 5

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@LCL
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


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// pop local 6

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@LCL
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


// label WHILE_EXP64d06c061c078d52

	(WHILE_EXP64d06c061c078d52)


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


// lt

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		D=M-D

		@SET_TRUE_33
		D;JLT

		@SP
		A=M-1
		M=0

		@CONTINUE_33
		0;JEQ

	(SET_TRUE_33)
		@SP
		A=M-1
		M=-1

	(CONTINUE_33)


// push local 5

		@LCL
		
		D=M
		@5
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


// lt

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		D=M-D

		@SET_TRUE_34
		D;JLT

		@SP
		A=M-1
		M=0

		@CONTINUE_34
		0;JEQ

	(SET_TRUE_34)
		@SP
		A=M-1
		M=-1

	(CONTINUE_34)


// or

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		M=M|D


// not

		@SP
		A=M-1
		M=!M


// if-goto WHILE_END64d06c061c078d52

		@SP
		M=M-1
		A=M
		D=M
		@WHILE_END64d06c061c078d52
		D;JNE


// push local 9

		@LCL
		
		D=M
		@9
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// if-goto IF_TRUEafafcb3098fc124f

		@SP
		M=M-1
		A=M
		D=M
		@IF_TRUEafafcb3098fc124f
		D;JNE


// goto IF_FALSEafafcb3098fc124f

		@IF_FALSEafafcb3098fc124f
		0;JMP


// label IF_TRUEafafcb3098fc124f

	(IF_TRUEafafcb3098fc124f)


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


// pop local 7

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@LCL
		D=M

		@7
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// goto IF_ENDafafcb3098fc124f

		@IF_ENDafafcb3098fc124f
		0;JMP


// label IF_FALSEafafcb3098fc124f

	(IF_FALSEafafcb3098fc124f)


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


// sub

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		M=M-D


// pop local 7

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@LCL
		D=M

		@7
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// label IF_ENDafafcb3098fc124f

	(IF_ENDafafcb3098fc124f)


// push local 10

		@LCL
		
		D=M
		@10
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// if-goto IF_TRUEd9a758b7e05a954a

		@SP
		M=M-1
		A=M
		D=M
		@IF_TRUEd9a758b7e05a954a
		D;JNE


// goto IF_FALSEd9a758b7e05a954a

		@IF_FALSEd9a758b7e05a954a
		0;JMP


// label IF_TRUEd9a758b7e05a954a

	(IF_TRUEd9a758b7e05a954a)


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


// push local 5

		@LCL
		
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


// pop local 8

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@LCL
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


// goto IF_ENDd9a758b7e05a954a

		@IF_ENDd9a758b7e05a954a
		0;JMP


// label IF_FALSEd9a758b7e05a954a

	(IF_FALSEd9a758b7e05a954a)


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


// push local 5

		@LCL
		
		D=M
		@5
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


// pop local 8

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@LCL
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


// label IF_ENDd9a758b7e05a954a

	(IF_ENDd9a758b7e05a954a)


// push local 7

		@LCL
		
		D=M
		@7
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push local 8

		@LCL
		
		D=M
		@8
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// call Screen.drawPixel 2

		@RETURN_309
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

		@Screen.drawPixel
		0;JMP

	(RETURN_309)


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


// push local 6

		@LCL
		
		D=M
		@6
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 0

		@0
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

		@SET_TRUE_35
		D;JLT

		@SP
		A=M-1
		M=0

		@CONTINUE_35
		0;JEQ

	(SET_TRUE_35)
		@SP
		A=M-1
		M=-1

	(CONTINUE_35)


// if-goto IF_TRUE7f30df4c8f4d200f

		@SP
		M=M-1
		A=M
		D=M
		@IF_TRUE7f30df4c8f4d200f
		D;JNE


// goto IF_FALSE7f30df4c8f4d200f

		@IF_FALSE7f30df4c8f4d200f
		0;JMP


// label IF_TRUE7f30df4c8f4d200f

	(IF_TRUE7f30df4c8f4d200f)


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


// pop local 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@LCL
		D=M

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push local 6

		@LCL
		
		D=M
		@6
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


// add

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		M=M+D


// pop local 6

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@LCL
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


// goto IF_END7f30df4c8f4d200f

		@IF_END7f30df4c8f4d200f
		0;JMP


// label IF_FALSE7f30df4c8f4d200f

	(IF_FALSE7f30df4c8f4d200f)


// push local 5

		@LCL
		
		D=M
		@5
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


// pop local 5

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@LCL
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


// push local 6

		@LCL
		
		D=M
		@6
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


// sub

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		M=M-D


// pop local 6

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@LCL
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


// label IF_END7f30df4c8f4d200f

	(IF_END7f30df4c8f4d200f)


// goto WHILE_EXP64d06c061c078d52

		@WHILE_EXP64d06c061c078d52
		0;JMP


// label WHILE_END64d06c061c078d52

	(WHILE_END64d06c061c078d52)


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


// function Screen.drawRectangle 1

	(Screen.drawRectangle)
		@LCL
		A=M
	
		M=0
		A=A+1
	
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


// push argument 2

		@ARG
		
		D=M
		@2
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


// push argument 3

		@ARG
		
		D=M
		@3
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


// pop argument 3

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@ARG
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


// label WHILE_EXP474d23a5971a7815

	(WHILE_EXP474d23a5971a7815)


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


// push argument 3

		@ARG
		
		D=M
		@3
		A=A+D
		D=M

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

		@SET_TRUE_36
		D;JLT

		@SP
		A=M-1
		M=0

		@CONTINUE_36
		0;JEQ

	(SET_TRUE_36)
		@SP
		A=M-1
		M=-1

	(CONTINUE_36)


// not

		@SP
		A=M-1
		M=!M


// if-goto WHILE_END474d23a5971a7815

		@SP
		M=M-1
		A=M
		D=M
		@WHILE_END474d23a5971a7815
		D;JNE


// label WHILE_EXPc7d3aab832a83d2d

	(WHILE_EXPc7d3aab832a83d2d)


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


// push argument 2

		@ARG
		
		D=M
		@2
		A=A+D
		D=M

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

		@SET_TRUE_37
		D;JLT

		@SP
		A=M-1
		M=0

		@CONTINUE_37
		0;JEQ

	(SET_TRUE_37)
		@SP
		A=M-1
		M=-1

	(CONTINUE_37)


// not

		@SP
		A=M-1
		M=!M


// if-goto WHILE_ENDc7d3aab832a83d2d

		@SP
		M=M-1
		A=M
		D=M
		@WHILE_ENDc7d3aab832a83d2d
		D;JNE


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


// call Screen.drawPixel 2

		@RETURN_310
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

		@Screen.drawPixel
		0;JMP

	(RETURN_310)


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


// add

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		M=M+D


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


// goto WHILE_EXPc7d3aab832a83d2d

		@WHILE_EXPc7d3aab832a83d2d
		0;JMP


// label WHILE_ENDc7d3aab832a83d2d

	(WHILE_ENDc7d3aab832a83d2d)


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


// goto WHILE_EXP474d23a5971a7815

		@WHILE_EXP474d23a5971a7815
		0;JMP


// label WHILE_END474d23a5971a7815

	(WHILE_END474d23a5971a7815)


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


// function Screen.drawCircle 0

	(Screen.drawCircle)
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


// push argument 2

		@ARG
		
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


// push argument 2

		@ARG
		
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


// push argument 2

		@ARG
		
		D=M
		@2
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


// push argument 2

		@ARG
		
		D=M
		@2
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


// call Screen.drawRectangle 4

		@RETURN_311
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
		@4
		D=D+A
		@SP
		D=M-D
		@ARG
		M=D

		@SP
		D=M
		@LCL
		M=D

		@Screen.drawRectangle
		0;JMP

	(RETURN_311)


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


// New file: String.vm

// function String.new 0

	(String.new)
		@LCL
		A=M
	
		D=A
		@SP
		M=D


// push constant 3

		@3
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Memory.alloc 1

		@RETURN_312
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

		@Memory.alloc
		0;JMP

	(RETURN_312)


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


// pop this 1

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@THIS
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


// call Array.new 1

		@RETURN_313
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

		@Array.new
		0;JMP

	(RETURN_313)


// pop this 0

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@THIS
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


// push constant 0

		@0
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


// function String.dispose 0

	(String.dispose)
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


// push this 0

		@THIS
		
		D=M
		@0
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// call Array.dispose 1

		@RETURN_314
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

		@Array.dispose
		0;JMP

	(RETURN_314)


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


// function String.length 0

	(String.length)
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


// function String.charAt 0

	(String.charAt)
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


// push this 0

		@THIS
		
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


// function String.setCharAt 0

	(String.setCharAt)
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


// push this 0

		@THIS
		
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


// push argument 2

		@ARG
		
		D=M
		@2
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


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


// push temp 0

		@5
		
		D=M
		@0
		A=A+D
		D=M

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


// function String.appendChar 0

	(String.appendChar)
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


// push this 0

		@THIS
		
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


// push temp 0

		@5
		
		D=M
		@0
		A=A+D
		D=M

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


// function String.eraseLastChar 0

	(String.eraseLastChar)
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


// function String.intValue 3

	(String.intValue)
		@LCL
		A=M
	
		M=0
		A=A+1
	
		M=0
		A=A+1
	
		M=0
		A=A+1
	
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


// push constant 1

		@1
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


// push constant 0

		@0
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


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push this 0

		@THIS
		
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


// push constant 45

		@45
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// eq

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		D=D-M

		@SET_TRUE_38
		D;JEQ

		@SP
		A=M-1
		M=0

		@CONTINUE_38
		0;JEQ

	(SET_TRUE_38)
		@SP
		A=M-1
		M=-1

	(CONTINUE_38)


// if-goto IF_TRUE5854d11910a5d0de

		@SP
		M=M-1
		A=M
		D=M
		@IF_TRUE5854d11910a5d0de
		D;JNE


// goto IF_FALSE5854d11910a5d0de

		@IF_FALSE5854d11910a5d0de
		0;JMP


// label IF_TRUE5854d11910a5d0de

	(IF_TRUE5854d11910a5d0de)


// push constant 1

		@1
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// neg

		@SP
		A=M-1
		M=-M


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


// push constant 1

		@1
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


// label IF_FALSE5854d11910a5d0de

	(IF_FALSE5854d11910a5d0de)


// label WHILE_EXP6170103339af8e98

	(WHILE_EXP6170103339af8e98)


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


// push this 0

		@THIS
		
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


// push constant 48

		@48
		D=A

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


// gt

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		D=M-D

		@SET_TRUE_39
		D;JGT

		@SP
		A=M-1
		M=0

		@CONTINUE_39
		0;JEQ

	(SET_TRUE_39)
		@SP
		A=M-1
		M=-1

	(CONTINUE_39)


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


// push this 0

		@THIS
		
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


// push constant 57

		@57
		D=A

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


// lt

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		D=M-D

		@SET_TRUE_40
		D;JLT

		@SP
		A=M-1
		M=0

		@CONTINUE_40
		0;JEQ

	(SET_TRUE_40)
		@SP
		A=M-1
		M=-1

	(CONTINUE_40)


// and

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		M=M&D


// and

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		M=M&D


// lt

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		D=M-D

		@SET_TRUE_41
		D;JLT

		@SP
		A=M-1
		M=0

		@CONTINUE_41
		0;JEQ

	(SET_TRUE_41)
		@SP
		A=M-1
		M=-1

	(CONTINUE_41)


// not

		@SP
		A=M-1
		M=!M


// if-goto WHILE_END6170103339af8e98

		@SP
		M=M-1
		A=M
		D=M
		@WHILE_END6170103339af8e98
		D;JNE


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


// push constant 10

		@10
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Math.multiply 2

		@RETURN_315
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

		@Math.multiply
		0;JMP

	(RETURN_315)


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


// push this 0

		@THIS
		
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


// push constant 48

		@48
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


// add

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		M=M+D


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


// goto WHILE_EXP6170103339af8e98

		@WHILE_EXP6170103339af8e98
		0;JMP


// label WHILE_END6170103339af8e98

	(WHILE_END6170103339af8e98)


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


// call Math.multiply 2

		@RETURN_316
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

		@Math.multiply
		0;JMP

	(RETURN_316)


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


// function String.setInt 2

	(String.setInt)
		@LCL
		A=M
	
		M=0
		A=A+1
	
		M=0
		A=A+1
	
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


// push constant 0

		@0
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


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// eq

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		D=D-M

		@SET_TRUE_42
		D;JEQ

		@SP
		A=M-1
		M=0

		@CONTINUE_42
		0;JEQ

	(SET_TRUE_42)
		@SP
		A=M-1
		M=-1

	(CONTINUE_42)


// if-goto IF_TRUEc66dfe166256a9a6

		@SP
		M=M-1
		A=M
		D=M
		@IF_TRUEc66dfe166256a9a6
		D;JNE


// goto IF_FALSEc66dfe166256a9a6

		@IF_FALSEc66dfe166256a9a6
		0;JMP


// label IF_TRUEc66dfe166256a9a6

	(IF_TRUEc66dfe166256a9a6)


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


// push constant 1

		@1
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.new 1

		@RETURN_317
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

		@String.new
		0;JMP

	(RETURN_317)


// pop temp 3

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@3
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 48

		@48
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_318
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

		@String.appendChar
		0;JMP

	(RETURN_318)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// call String.appendChar 2

		@RETURN_319
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

		@String.appendChar
		0;JMP

	(RETURN_319)


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


// push constant 1

		@1
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


// label IF_FALSEc66dfe166256a9a6

	(IF_FALSEc66dfe166256a9a6)


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


// push constant 0

		@0
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

		@SET_TRUE_43
		D;JLT

		@SP
		A=M-1
		M=0

		@CONTINUE_43
		0;JEQ

	(SET_TRUE_43)
		@SP
		A=M-1
		M=-1

	(CONTINUE_43)


// if-goto IF_TRUE35940da8edb57eed

		@SP
		M=M-1
		A=M
		D=M
		@IF_TRUE35940da8edb57eed
		D;JNE


// goto IF_FALSE35940da8edb57eed

		@IF_FALSE35940da8edb57eed
		0;JMP


// label IF_TRUE35940da8edb57eed

	(IF_TRUE35940da8edb57eed)


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// not

		@SP
		A=M-1
		M=!M


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


// call Math.abs 1

		@RETURN_320
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

		@Math.abs
		0;JMP

	(RETURN_320)


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


// label IF_FALSE35940da8edb57eed

	(IF_FALSE35940da8edb57eed)


// label WHILE_EXP907892acb8cd439a

	(WHILE_EXP907892acb8cd439a)


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


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// gt

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		D=M-D

		@SET_TRUE_44
		D;JGT

		@SP
		A=M-1
		M=0

		@CONTINUE_44
		0;JEQ

	(SET_TRUE_44)
		@SP
		A=M-1
		M=-1

	(CONTINUE_44)


// not

		@SP
		A=M-1
		M=!M


// if-goto WHILE_END907892acb8cd439a

		@SP
		M=M-1
		A=M
		D=M
		@WHILE_END907892acb8cd439a
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


// push this 0

		@THIS
		
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


// push constant 10

		@10
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Math.mod 2

		@RETURN_321
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

		@Math.mod
		0;JMP

	(RETURN_321)


// push constant 48

		@48
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


// push temp 0

		@5
		
		D=M
		@0
		A=A+D
		D=M

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


// push constant 10

		@10
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call Math.divide 2

		@RETURN_322
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

		@Math.divide
		0;JMP

	(RETURN_322)


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


// goto WHILE_EXP907892acb8cd439a

		@WHILE_EXP907892acb8cd439a
		0;JMP


// label WHILE_END907892acb8cd439a

	(WHILE_END907892acb8cd439a)


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


// if-goto IF_TRUEa1be73b743b7f4de

		@SP
		M=M-1
		A=M
		D=M
		@IF_TRUEa1be73b743b7f4de
		D;JNE


// goto IF_FALSEa1be73b743b7f4de

		@IF_FALSEa1be73b743b7f4de
		0;JMP


// label IF_TRUEa1be73b743b7f4de

	(IF_TRUEa1be73b743b7f4de)


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


// push constant 45

		@45
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_323
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

		@String.appendChar
		0;JMP

	(RETURN_323)


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


// label IF_FALSEa1be73b743b7f4de

	(IF_FALSEa1be73b743b7f4de)


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


// call String.reverse 1

		@RETURN_324
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

		@String.reverse
		0;JMP

	(RETURN_324)


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


// function String.reverse 4

	(String.reverse)
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


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
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


// push constant 0

		@0
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


// label WHILE_EXP42e821d2aa561a84

	(WHILE_EXP42e821d2aa561a84)


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


// lt

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		D=M-D

		@SET_TRUE_45
		D;JLT

		@SP
		A=M-1
		M=0

		@CONTINUE_45
		0;JEQ

	(SET_TRUE_45)
		@SP
		A=M-1
		M=-1

	(CONTINUE_45)


// not

		@SP
		A=M-1
		M=!M


// if-goto WHILE_END42e821d2aa561a84

		@SP
		M=M-1
		A=M
		D=M
		@WHILE_END42e821d2aa561a84
		D;JNE


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


// push temp 0

		@5
		
		D=M
		@0
		A=A+D
		D=M

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


// push temp 0

		@5
		
		D=M
		@0
		A=A+D
		D=M

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


// goto WHILE_EXP42e821d2aa561a84

		@WHILE_EXP42e821d2aa561a84
		0;JMP


// label WHILE_END42e821d2aa561a84

	(WHILE_END42e821d2aa561a84)


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


// function String.newLine 0

	(String.newLine)
		@LCL
		A=M
	
		D=A
		@SP
		M=D


// push constant 128

		@128
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


// function String.backSpace 0

	(String.backSpace)
		@LCL
		A=M
	
		D=A
		@SP
		M=D


// push constant 129

		@129
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


// function String.doubleQuote 0

	(String.doubleQuote)
		@LCL
		A=M
	
		D=A
		@SP
		M=D


// push constant 34

		@34
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


// New file: Sys.vm

// function Sys.init 0

	(Sys.init)
		@LCL
		A=M
	
		D=A
		@SP
		M=D


// call Keyboard.init 0

		@RETURN_325
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

		@Keyboard.init
		0;JMP

	(RETURN_325)


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


// call Math.init 0

		@RETURN_326
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

		@Math.init
		0;JMP

	(RETURN_326)


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


// call Memory.init 0

		@RETURN_327
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

		@Memory.init
		0;JMP

	(RETURN_327)


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


// call Output.init 0

		@RETURN_328
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

		@Output.init
		0;JMP

	(RETURN_328)


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


// call Screen.init 0

		@RETURN_329
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

		@Screen.init
		0;JMP

	(RETURN_329)


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


// call Main.main 0

		@RETURN_330
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

		@Main.main
		0;JMP

	(RETURN_330)


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


// call Sys.halt 0

		@RETURN_331
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

		@Sys.halt
		0;JMP

	(RETURN_331)


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


// function Sys.halt 0

	(Sys.halt)
		@LCL
		A=M
	
		D=A
		@SP
		M=D


// label WHILE_EXPa33ee7a42e428bea

	(WHILE_EXPa33ee7a42e428bea)


// push constant 0

		@0
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// not

		@SP
		A=M-1
		M=!M


// not

		@SP
		A=M-1
		M=!M


// if-goto WHILE_ENDa33ee7a42e428bea

		@SP
		M=M-1
		A=M
		D=M
		@WHILE_ENDa33ee7a42e428bea
		D;JNE


// goto WHILE_EXPa33ee7a42e428bea

		@WHILE_EXPa33ee7a42e428bea
		0;JMP


// label WHILE_ENDa33ee7a42e428bea

	(WHILE_ENDa33ee7a42e428bea)


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


// function Sys.wait 3

	(Sys.wait)
		@LCL
		A=M
	
		M=0
		A=A+1
	
		M=0
		A=A+1
	
		M=0
		A=A+1
	
		D=A
		@SP
		M=D


// push constant 100

		@100
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


// push constant 0

		@0
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


// label WHILE_EXP931443a938093b98

	(WHILE_EXP931443a938093b98)


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


// lt

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		D=M-D

		@SET_TRUE_46
		D;JLT

		@SP
		A=M-1
		M=0

		@CONTINUE_46
		0;JEQ

	(SET_TRUE_46)
		@SP
		A=M-1
		M=-1

	(CONTINUE_46)


// not

		@SP
		A=M-1
		M=!M


// if-goto WHILE_END931443a938093b98

		@SP
		M=M-1
		A=M
		D=M
		@WHILE_END931443a938093b98
		D;JNE


// push constant 0

		@0
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


// label WHILE_EXPe17db4e257112000

	(WHILE_EXPe17db4e257112000)


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


// lt

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		D=M-D

		@SET_TRUE_47
		D;JLT

		@SP
		A=M-1
		M=0

		@CONTINUE_47
		0;JEQ

	(SET_TRUE_47)
		@SP
		A=M-1
		M=-1

	(CONTINUE_47)


// not

		@SP
		A=M-1
		M=!M


// if-goto WHILE_ENDe17db4e257112000

		@SP
		M=M-1
		A=M
		D=M
		@WHILE_ENDe17db4e257112000
		D;JNE


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


// goto WHILE_EXPe17db4e257112000

		@WHILE_EXPe17db4e257112000
		0;JMP


// label WHILE_ENDe17db4e257112000

	(WHILE_ENDe17db4e257112000)


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


// goto WHILE_EXP931443a938093b98

		@WHILE_EXP931443a938093b98
		0;JMP


// label WHILE_END931443a938093b98

	(WHILE_END931443a938093b98)


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


// function Sys.error 0

	(Sys.error)
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


// call String.new 1

		@RETURN_332
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

		@String.new
		0;JMP

	(RETURN_332)


// pop temp 3

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@3
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 69

		@69
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_333
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

		@String.appendChar
		0;JMP

	(RETURN_333)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 82

		@82
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_334
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

		@String.appendChar
		0;JMP

	(RETURN_334)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 82

		@82
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_335
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

		@String.appendChar
		0;JMP

	(RETURN_335)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 60

		@60
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_336
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

		@String.appendChar
		0;JMP

	(RETURN_336)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// call Output.printString 1

		@RETURN_337
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

		@Output.printString
		0;JMP

	(RETURN_337)


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


// call Output.printInt 1

		@RETURN_338
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

		@Output.printInt
		0;JMP

	(RETURN_338)


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


// push constant 1

		@1
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.new 1

		@RETURN_339
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

		@String.new
		0;JMP

	(RETURN_339)


// pop temp 3

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@3
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push temp 3

		@5
		
		D=M
		@3
		A=A+D
		D=M

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 62

		@62
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// call String.appendChar 2

		@RETURN_340
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

		@String.appendChar
		0;JMP

	(RETURN_340)


// pop temp 4

		@SP
		M=M-1
		A=M
		D=M

		@value
		M=D

		@5
		D=A

		@4
		D=A+D

		@location
		M=D

		@value
		D=M

		@location
		A=M
		M=D


// call Output.printString 1

		@RETURN_341
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

		@Output.printString
		0;JMP

	(RETURN_341)


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


// call Sys.halt 0

		@RETURN_342
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

		@Sys.halt
		0;JMP

	(RETURN_342)


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


// New file: END.vm


// loop to end

	(LOOP)

		@LOOP
		0;JMP
