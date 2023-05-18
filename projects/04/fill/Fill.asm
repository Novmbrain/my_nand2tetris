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

// @SCREEN
// 256 by 512 (32*16) pixels
// @KBD 

// while (true) {
//   if (key.status == press) {
//     // wirte black
// -1
//   } else {
//     // write while
// 0
//   }
// }

// from @SCREEN to @KBD , modify pixels

// for (int i = @SCREEN; i < @KEB; i ++) {

// }


(LOOP)
  @KBD
  D=M 

  @ELSE // if (key.status == 0) jump to write whitle to all pixels 
  D;JEQ
    // write balck to all pixels  
    @i
    M=0; // initialize i = 0
    (BLACK_LOOP)
      // Set Ram(@Screen + i) = -1
      @i 
      D=M
      @SCREEN
      A=A+D
      M=-1

      D=A 
      @screenPointer
      M=D

      @i 
      M=M+1 // i++

      // end condition if (@screenPointer - @KBD + 1 == 0)
      @KBD
      D=A-1
      @screenPointer
      M=M-D
      D=M
      @END2
      D;JEQ
    @BLACK_LOOP 
    0;JMP
    (END2)  

@LOOP
0;JMP
(ELSE)
  // write white to all pixels
  @i
  M=0;
  (WHITE_LOOP)
    // Set Ram(@Screen + i) = 0
    @i 
    D=M
    @SCREEN
    A=A+D
    M=0

    D=A 
    @screenPointer
    M=D

    @i 
    M=M+1 // i++

    // end condition if (@screenPointer - @KBD + 1 == 0)
    @KBD
    D=A-1
    @screenPointer
    M=M-D
    D=M
    @END1
    D;JEQ
  @WHITE_LOOP
  0;JMP
  (END1)  

@LOOP
0;JMP