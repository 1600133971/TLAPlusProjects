---------------------------- MODULE Inline -------------------------------
VARIABLE x

A == 3

B == A

Init == x = B

Next == UNCHANGED x
==========================================================================
