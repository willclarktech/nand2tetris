// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

// Initialise result to 0
@R2
M=0

// Store R0 as x
@R0
D=M

@x
M=D

// Store R1 as y
@R1
D=M

@y
M=D

// Store a counter initialised as 0 as i
@i
M=0

// Store a sum initialised as 0 as sum
@sum
M=0

(ADD)

// Jump to (END) if equal to x
	@i
	D=M

	@x
	D=M-D

	@END
	D;JLE

// Add y to sum
	@y
	D=M

	@sum
	M=D+M

// Increment i
	@i
	M=M+1

// Restart loop
	@ADD
	0;JMP

(END)

	// Store sum in R2
	@sum
	D=M

	@R2
	M=D

	// Endless loop to finish

	(LOOP)

		@LOOP
		0;JMP
