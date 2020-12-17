------------------------------- MODULE etest5 -------------------------------
(* M!Ident for nonexistent module M. *)

EXTENDS TLC, Naturals

VARIABLE x

Init == /\ x = 1
        /\ Print("Should report error for nonexistent module M", TRUE)

Next == /\ UNCHANGED x
        /\ IF M!Init THEN TRUE
                     ELSE TRUE
        /\ Print("Should not get this far", TRUE)

Inv ==  TRUE

=============================================================================
\* Modification History
\* Last modified Sun Dec 13 20:30:29 CST 2020 by Administrator
\* Created Sun Dec 13 20:30:21 CST 2020 by Administrator
