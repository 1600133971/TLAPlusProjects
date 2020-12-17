------------------------------- MODULE etest3 -------------------------------
(* Testing deadlock and number of states found. *)

EXTENDS TLC, Naturals, Sequences, FiniteSets

VARIABLE x, y, z

Init == /\ Print("This test should deadlock after finding two states", TRUE)
        /\ x = {}
        /\ y = {}
        /\ z = 1

Next == /\ x = {}
        /\ x' = {1}        
        /\ y' \in SUBSET x'
        /\ z' = z
        /\ y' = {}

Inv ==  TRUE

=============================================================================
\* Modification History
\* Last modified Sun Dec 13 19:43:24 CST 2020 by Administrator
\* Created Sun Dec 13 19:43:20 CST 2020 by Administrator
