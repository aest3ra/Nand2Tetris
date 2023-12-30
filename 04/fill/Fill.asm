// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen
// by writing 'black' in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen by writing
// 'white' in every pixel;
// the screen should remain fully clear as long as no key is pressed.

@color
M = 0

(LOOP)
    @color
    D = A
    @SCREEN
    M = D

    @KBD
    D = M

    @BLACK
    D;JGT

    @WHITE
    0;JMP

(BLACK)
    @color   
    M = -1
    @LOOP
    0;JMP   

(WHITE)
    @color
    M = 0
    @LOOP
    0;JMP   

