------------------------------- MODULE etest4 -------------------------------
(* Evaluates m[v] for model-value m. *)

EXTENDS TLC, Naturals, Sequences, FiniteSets

VARIABLE x
CONSTANT A



Req == [  mask |-> A  ]
Init == /\ x = 1
        /\ Print("Should report error for applying model value to arg", TRUE)
        /\ Req.mask[1] = 1
        /\ Print("Should never get this far", TRUE)

Next == UNCHANGED x

Inv ==  TRUE

=============================================================================
\* Modification History
\* Last modified Sun Dec 13 19:45:14 CST 2020 by Administrator
\* Created Sun Dec 13 19:45:05 CST 2020 by Administrator
