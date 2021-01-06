--------------------------- MODULE cantor5_tlaps ---------------------------
THEOREM cantor ==
  \A S, f :
    \E A \in SUBSET S :
      \A x \in S :
        f [x] # A
<1>1. ASSUME NEW S, NEW f
      PROVE  \E A \in SUBSET S : \A x \in S : f[x] # A
  <2> WITNESS { z \in S : z \notin f[z] } \in SUBSET S
  <2> QED OBVIOUS
<1> QED BY <1>1
=============================================================================
\* Modification History
\* Last modified Tue Jan 05 22:45:11 CST 2021 by Administrator
\* Created Tue Jan 05 22:44:57 CST 2021 by Administrator
