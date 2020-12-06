------------------------------- MODULE hanoi2 -------------------------------
EXTENDS Sequences, Integers 

CONSTANT Initial, Sticks, Disks, Target

VARIABLE Towers

 
Init == Towers = [ s \in Sticks |-> IF s = Initial THEN Disks ELSE << >> ]

Move(src,dst) == /\ ~ src = dst
                 /\ Towers[src] # << >>
                 /\ Towers' = [Towers EXCEPT ![src] = Tail(Towers[src]),
                                             ![dst] = <<Head(Towers[src])>> \o Towers[dst]]


RECURSIVE Ordered(_)
Ordered(seq) == \/ Len(seq) \in {0,1}
                \/ /\ Head(seq) < Head(Tail(seq))
                   /\ Ordered(Tail(seq))

Done == Towers[Target] = Disks

Consistent == \A s \in Sticks : Ordered(Towers[s])

Next == \E s1,s2 \in Sticks : Move(s2,s1)
=============================================================================
\* Modification History
\* Last modified Wed Nov 25 23:28:42 CST 2020 by Administrator
\* Last modified Tue Sep 18 16:49:19 EDT 2018 by eugene.tolmachev
\* Created Thu Sep 13 14:11:06 EDT 2018 by eugene.tolmachev
