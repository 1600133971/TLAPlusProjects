------------------------- MODULE dieharder_pluscal -------------------------
EXTENDS Naturals

CONSTANT Jug,      \* The set of all jugs.
         Capacity, \* A function, where Capacity[j] is the capacity of jug j.
         Goal      \* The quantity of water our heros must measure.
         
Min(m,n) == IF m < n THEN m ELSE n

(*
--algorithm dieharder_pluscal {
  variables contents = [j \in Jug |-> 0];
  {
    while (TRUE)
    {
      with (j \in Jug) {
        either contents[j] := Capacity[j]
        or     contents[j] := 0
        or     with (k \in Jug \ {j}, amountPoured = Min(contents[j], Capacity[k]-contents[k])) {
                 contents[j] := contents[j] - amountPoured ||
                 contents[k] := contents[k] + amountPoured
               }
      }
    }
  }
}
*)
\* BEGIN TRANSLATION (chksum(pcal) = "8c7100e6" /\ chksum(tla) = "31823d3d")
VARIABLE contents

vars == << contents >>

Init == (* Global variables *)
        /\ contents = [j \in Jug |-> 0]

Next == \E j \in Jug:
          \/ /\ contents' = [contents EXCEPT ![j] = Capacity[j]]
          \/ /\ contents' = [contents EXCEPT ![j] = 0]
          \/ /\ \E k \in Jug \ {j}:
                  LET amountPoured == Min(contents[j], Capacity[k]-contents[k]) IN
                    contents' = [contents EXCEPT ![j] = contents[j] - amountPoured,
                                                 ![k] = contents[k] + amountPoured]

Spec == Init /\ [][Next]_vars

\* END TRANSLATION 
TypeOK == contents \in [Jug -> Nat]
NotSolved == \A j \in Jug : contents[j] # Goal
=============================================================================
\* Modification History
\* Last modified Thu Dec 17 22:36:40 CST 2020 by Administrator
\* Created Thu Dec 17 21:31:10 CST 2020 by Administrator
