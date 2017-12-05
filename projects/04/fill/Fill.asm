// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

// Declare constants
@1
D=-A
@black
M=D

@white
M=0

@8192
D=A

@slots
M=D

// Check if key is pressed

(GET_KEY)
	@i
	M=0

	@KBD
	D=M

	@CLEAR
	D;JEQ

	@FILL
	0;JMP

(CLEAR)
	@white
	D=M

	@color
	M=D

	@PAINT
	0;JMP

(FILL)
	@black
	D=M

	@color
	M=D

	@PAINT
	0;JMP

(PAINT)
	@i
	D=M

	@SCREEN
	D=D+A

	@block
	M=D

	@color
	D=M

	@block
	A=M
	M=D

	@i
	M=M+1
	D=M

	@slots
	D=M-D

	@PAINT
	D;JGT

	@GET_KEY
	0;JMP

// Endless loop to finish

(LOOP)
	@LOOP
	0;JMP
