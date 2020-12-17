------------------------------- MODULE etest6 -------------------------------
(* Defining x' in terms of x' *)

EXTENDS TLC, Integers, Sequences, FiniteSets

VARIABLE x

Init == /\ Print("Should complain about undefined value of x.", TRUE)
        /\ x = [i \in {1,2} |-> i]


Action(c) == c' = [c EXCEPT ![1] = (c[2])']

Next ==  \/ /\ x[1] = 1
            /\ Action(x)
            /\ Print("Should not get this far", TRUE)

         \/ UNCHANGED x

Inv ==  TRUE
         

Constraint == TRUE

=============================================================================
\* Modification History
\* Last modified Sun Dec 13 20:32:08 CST 2020 by Administrator
\* Created Sun Dec 13 20:31:56 CST 2020 by Administrator
