// push constant 17

		@17
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 17

		@17
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


// push constant 17

		@17
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


// push constant 16

		@16
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 17

		@17
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


// push constant 892

		@892
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 891

		@891
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

		@SET_TRUE_4
		D;JLT

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


// push constant 891

		@891
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 892

		@892
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

		@SET_TRUE_5
		D;JLT

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


// push constant 891

		@891
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 891

		@891
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

		@SET_TRUE_6
		D;JLT

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


// push constant 32767

		@32767
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 32766

		@32766
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

		@SET_TRUE_7
		D;JGT

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


// push constant 32766

		@32766
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 32767

		@32767
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

		@SET_TRUE_8
		D;JGT

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


// push constant 32766

		@32766
		D=A

		@SP
		M=M+1
		A=M-1
		M=D


// push constant 32766

		@32766
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

		@SET_TRUE_9
		D;JGT

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


// push constant 57

		@57
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


// push constant 53

		@53
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


// push constant 112

		@112
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


// neg

		@SP
		A=M-1
		M=-M


// and

		@SP
		M=M-1

		A=M
		D=M
		A=A-1
		M=M&D


// push constant 82

		@82
		D=A

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


// not

		@SP
		A=M-1
		M=!M



// loop to end

	(LOOP)

		@LOOP
		0;JMP
