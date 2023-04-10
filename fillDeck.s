	.arch 	armv7-a
	.fpu 	vfpv3-d16
    .text
    .align  2
    .syntax unified
    .global fillDeck
    .type   fillDeck, %function


fillDeck:
    @prologue
    push {r4, fp, lr}   @r4 <- current array pointer
    add fp, sp, #4

    sub sp, sp, #20 @'claim' 20 bytes
    @ str r0, [fp, #-16]
    mov r4, r0


topOfLoop:
    @'2'
    mov r2, #50 @ascii value of 2 
    str r2, [r4]
    add r4, r4, #4

    @ ldr r3, [fp, #-16]
    @ add r3, r3, #4

    mov r2, #2
    str r2, [r4]
    add r4, r4, #4

    @'3'
    mov r2, #50 @ascii value of 2 
    str r2, [r4]
    add r4, r4, #4

    mov r2, #2
    str r2, [r4]
    add r4, r4, #4

    

end:
    @epilogue
    sub sp, fp, #4
    pop {r4, fp, lr}
    bx lr
