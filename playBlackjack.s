	.arch 	armv7-a
	.fpu 	vfpv3-d16
    .align  2
    .syntax unified
    .section  .rodata
countMsg:
    .ascii "%d\012\0"

outputMsg:
    .ascii  "The card is a %c = %d\012\000"


    .text
    .global main
    .type   main, %function

main:
    @ prologue
    push {r4, r9, fp, lr}
    add fp, sp, #4

    sub sp, sp, #416  @claim memory for 52 cards at 8 bytes per card
    sub r9, fp, #420 @store the address of the top of the 'array' (think of it as index 0)

    @spike1 - build and shuffle deck of cards
    @call a buildDeckOfCards

    mov r4, #52     //r4 <- #52 (LCV)

    mov r0, r9
    bl fillDeck

    @ mov r0, r9
    @bl shuffleDeck

    mov r0, r9
    bl printDeck

    @call shuffle

    @spike2 - start a game
    @deal initial cards
    @dealerBlackjack
    @playerBlackjack
    @if both announce push (tie)

    @spike3 - player draws
    @player draws card
    @hit or stand?
    @if hit -> deal the card
    @did player "bust"? (cardTotal >= 21)
    @if yes, "player loses"
    @if no, repeat

    @spike 4 - dealer draws by rules
    @dealerHandTotal <= 16
    @if yes, deal card to dealer
    @repeat until dealerHandTotal > 16

    @spike 5 - who won?
    @did dealer bust? (dealerHandTotal > 21)
    @if yes, player wins
    @if no, is dealerHandTotal > playerHandTotal?
    @if yes, dealer wins
    @else push (tie)

fillDeck:
    ldr r0, =countMsg
    mov r1, r4
    bl printf

    sub r4, r4, #1 //decrement LCV

    cmp r4, #0
    bgt fillDeck  






    mov r0, #0  @return 0

        
    @ @epilogue
    sub sp, fp, #4
    pop {r4, r9, fp, pc}

    
