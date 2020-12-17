------------------------------- MODULE etest2 -------------------------------
(* Test that TLC complains if a operator is called with too few arguments. *)

EXTENDS TLC

VARIABLE x
Type == x \in BOOLEAN
Init == 
  /\ Print("Should complain that operator Foo is called with too few arguments", TRUE)
  /\ x = TRUE

Next == UNCHANGED x


Foo(a, b) == a /\ b

Inv ==  Foo(x)

=============================================================================
\* Modification History
\* Last modified Sun Dec 13 19:42:41 CST 2020 by Administrator
\* Created Sun Dec 13 19:42:31 CST 2020 by Administrator
