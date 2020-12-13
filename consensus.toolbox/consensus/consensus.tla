----------------------------- MODULE consensus -----------------------------
EXTENDS Naturals, FiniteSets, TLAPS, FiniteSetTheorems 
-----------------------------------------------------------------------------
CONSTANT Value  \* the set of values that can be chosen
VARIABLE chosen \* the set of values that have been chosen
-----------------------------------------------------------------------------
Init == chosen = {}

Next == 
    /\ chosen = {}
    /\ \E v \in Value : chosen' = {v}

Spec == Init /\ [][Next]_chosen
-----------------------------------------------------------------------------
Inv == 
    /\ chosen \subseteq Value
    /\ IsFiniteSet(chosen)
    /\ Cardinality(chosen) \leq 1
-----------------------------------------------------------------------------
THEOREM Invariance == Spec => []Inv
<1>1. Init => Inv
\*  BY CardinalityZero, SMT DEF Init, Inv
<1>2. Inv /\ [Next]_chosen => Inv'
\*  BY CardinalityOne, SMT DEF Next, Inv
<1>3. QED 
  BY <1>1, <1>2, PTL DEF Spec
=============================================================================
\* Modification History
\* Last modified Sat Dec 12 16:53:04 CST 2020 by Administrator
\* Created Sat Dec 12 16:52:47 CST 2020 by Administrator
