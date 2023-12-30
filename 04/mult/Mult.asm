// Mult.asm

// i = 0
// sum = 0
// LOOP:
//     if(i == R1) goto END
//     sum = sum + R0
//     i = i + 1 
//     goto LOOP
// END:
//     R2 = sum

@i
M = 0   // sum = 0
@sum
M = 0   // i = 0

(LOOP)
    @i
    D = M
    @R1
    D = D - M   // i = i - R1
    @END
    D;JEQ       // if (i == R1) END

    @R0
    D = M     
    @sum
    M = D + M   // sum = sum + D

    @i
    M = M + 1   // i = i + 1

    @LOOP
    0;JMP
(END)
    @sum
    D = M
    @R2
    M = D       // R2 = sum


