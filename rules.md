2 player game (us vs the dealer)
We make decisions and the dealer doesn't make any

How do you win?
    By drawing a hand that is higher than the dealer's
    By the dealer drawing a hand value that is over 21 (and you did not)
    By drawing a hand value of 21 on your first two cards, when the dealer does not

How do you lose?
    Your hand value exceeds 21
    The dealers hand has a greater value than yours at the end of the round

Only one deck of cards (52)

Card Value
    2 - 10 count at face value 
    Face cards (J, Q, K) count as 10
    Ace can count as 10 or 11 depending on which value helps the hand the most



Start with $100, $5 per hand
100 hands

push {regs, fp, lr}

dealer -> X, 4
player -> 7, 5
==============
buildDeckOfCards

shuffleDeckOfCards

dealInitialCards

anybody blackjack?
    yes -> figure out the betting
    no -> branch playerDecision

playerDecision ? H(it) or S(tand)

did player stand?
    yes -> dealerDecision
    no -> deal a card

did player bust?
    yes -> game over, lost bet
    n -> branch  playerDecision