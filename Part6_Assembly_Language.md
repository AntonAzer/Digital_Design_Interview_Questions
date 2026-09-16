# Part 6:

<img width="1017" height="542" alt="image" src="https://github.com/user-attachments/assets/d514167b-1508-4eb9-9f93-5585cabd7a1a" />

Regrading to the head of the question "but are usually open to any assembly
language" I solved both with ARM Assembly :)

## Question 6.1:

EOR r0, r0, r1    @ r0 = r0 ^ r1

EOR r1, r0, r1    @ r1 = (r0 ^ r1) ^ r1 = original r0


EOR r0, r0, r1    @ r0 = (r0 ^ r1) ^ original r0 = original r1



it considered as first trick in xor magic, it is confusable a little bit.

## Question 6.2:
**The code in seperate .asm file.**

