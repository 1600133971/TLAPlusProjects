-------------------------------- MODULE cat --------------------------------
EXTENDS Integers

CONSTANTS Doors
VARIABLES CatDistr, LastDoor

Init ==
        /\ CatDistr = 0..Doors
        /\ LastDoor = -1

OpenDoor(n) == 
        /\ CatDistr' =
              0..Doors \intersect UNION { {x-1, x+1} : x \in CatDistr \ {n} }
        /\ LastDoor' = n

Next == \E door \in 0..Doors : OpenDoor(door)

CatWalk == CatDistr /= {}

=============================================================================
\* Modification History
\* Last modified Sat Dec 12 15:58:07 CST 2020 by Administrator
\* Created Sat Dec 12 15:57:57 CST 2020 by Administrator
