N = int(input())
Cards = { int(input()) for i in range(N - 1)}
CardsInDeck = set(range(1,N))
print(CardsInDeck - Cards)

'''
Question:-


There was a set of Cards with numbers from 1 to N. One of th Card is now lost.
detect the number on that lost card given the numbers for remaining cards.

Given a number N, followed by N-1 integers representin the numbers on the remaining
cards(distinct integers in the range from 1 to N). Find and print the number on the list..


Examle-Input:-

5
3
5
2
1

Example-Output:-
4

'''
