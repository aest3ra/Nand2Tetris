// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, the
// program clears the screen, i.e. writes "white" in every pixel.

@SCREEN
D=A
@location
M=D-1

(CHECK)
    @KBD
    D=M
    @BLACK
    D;JGT
    @WHITE
    0;JMP

(BLACK)
    @24576
    D=M
    @location

    D=D-M
    @CHECK
    D;JEQ

    @location

    A=M
    M=-1

    @location

    D=M+1
    @location

    M=D

    @CHECK
    0;JMP

(WHITE)
    @SCREEN
    D=A-1
    @location

    D=D-M
    @CHECK
    D;JEQ

    @location

    A=M
    M=0

    @location

    D=M-1
    @location

    M=D

    @CHECK
    0;JMP