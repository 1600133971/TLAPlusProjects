--------------------------- MODULE cantor10_tlaps ---------------------------
(***************************************************************************)
(* Cantor's theorem: no function from a set to its powerset is surjective. *)
(***************************************************************************)
THEOREM Cantor ==
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

(***************************************************************************)
(* Corollary: no set is universal.                                         *)
(***************************************************************************)
THEOREM NoSetContainsAllValues ==
  \A S : \E x : x \notin S
<1>. SUFFICES
       ASSUME NEW S,
              \A x : x \in S
       PROVE  FALSE
  OBVIOUS
<1>. DEFINE f == [x \in S |-> x]
<1>. ASSUME NEW A \in SUBSET S
     PROVE  \E x \in S : f[x] = A
  <2>. WITNESS A \in S
  <2>. QED
    OBVIOUS
<1>. QED
  BY Cantor
=============================================================================
\* Modification History
\* Last modified Tue Jan 05 22:51:14 CST 2021 by Administrator
\* Created Tue Jan 05 22:50:50 CST 2021 by Administrator
