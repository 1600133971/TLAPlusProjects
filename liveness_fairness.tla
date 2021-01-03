------------------------- MODULE liveness_fairness -------------------------
VARIABLE state

Init == state = "a"

AToB == state = "a" /\ state' = "b"
BToA == state = "b" /\ state' = "a"
BToC == state = "b" /\ state' = "c"

Next1 == AToB \/ BToC
Next2 == AToB \/ BToA \/ BToC

Spec1 == Init /\ [][Next1]_state
Spec2 == Init /\ [][Next1]_state /\ WF_state(Next1)
Spec3 == Init /\ [][Next2]_state /\ WF_state(Next2) /\ SF_state(BToC)

Invariant == state \in {"a", "b", "c"}

Termination == <>(state = "c")
=============================================================================
\* Modification History
\* Last modified Mon Dec 28 23:48:22 CST 2020 by Administrator
\* Created Sat Dec 26 16:33:25 CST 2020 by Administrator
