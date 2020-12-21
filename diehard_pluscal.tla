-------------------------- MODULE diehard_pluscal --------------------------
EXTENDS Naturals, FunctionsExt

(*
--algorithm diehard_pluscal {
  variables big = 0, small = 0;
  {
    while (TRUE) {
      either small := 3
      or     big   := 5
      or     small := 0
      or     big   := 0
      or     with (a = Min(big + small, 5)) {
               small := small - (a - big);
               big := a;
             }
      or     with (a = Min(big + small, 3)) {
               big := big - (a - small);
               small := a;
             }
    }
  }
}
*)
\* BEGIN TRANSLATION (chksum(pcal) = "5e2690c6" /\ chksum(tla) = "87415c17")
VARIABLES big, small

vars == << big, small >>

Init == (* Global variables *)
        /\ big = 0
        /\ small = 0

Next == \/ /\ small' = 3
           /\ big' = big
        \/ /\ big' = 5
           /\ small' = small
        \/ /\ small' = 0
           /\ big' = big
        \/ /\ big' = 0
           /\ small' = small
        \/ /\ LET a == Min(big + small, 5) IN
                /\ small' = small - (a - big)
                /\ big' = a
        \/ /\ LET a == Min(big + small, 3) IN
                /\ big' = big - (a - small)
                /\ small' = a

Spec == Init /\ [][Next]_vars

\* END TRANSLATION 
TypeOK == /\ small \in 0..3 
          /\ big   \in 0..5

NotSolved == big # 4
=============================================================================
\* Modification History
\* Last modified Thu Dec 17 23:15:33 CST 2020 by Administrator
\* Created Thu Dec 17 20:42:43 CST 2020 by Administrator
