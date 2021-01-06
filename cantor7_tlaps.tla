--------------------------- MODULE cantor7_tlaps ---------------------------
THEOREM cantor ==
  \A S, f :
    \E A \in SUBSET S :
      \A x \in S :
        f [x] # A
<1> SUFFICES
      ASSUME NEW S, NEW f
      PROVE  \E A \in SUBSET S : \A x \in S : f[x] # A
  OBVIOUS
<1> WITNESS { z \in S : z \notin f[z] } \in SUBSET S
<1> QED OBVIOUS
=============================================================================
\* Modification History
\* Last modified Tue Jan 05 22:47:34 CST 2021 by Administrator
\* Created Tue Jan 05 22:47:17 CST 2021 by Administrator
