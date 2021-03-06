------------------------------- MODULE hanoi3 -------------------------------
EXTENDS TLC, Sequences, Integers
                
(* --algorithm hanoi3
variables tower = <<<<1, 2, 3>>, <<>>, <<>>>>, 

define 
  D == DOMAIN tower
end define;

begin
while TRUE do
  assert tower[3] /= <<1, 2, 3>>;
  with from \in {x \in D : tower[x] /= <<>>},
       to \in {
                y \in D : 
                  \/ tower[y] = <<>>
                  \/ Head(tower[from]) < Head(tower[y])
              } 
  do
    tower[from] := Tail(tower[from]) ||
    tower[to] := <<Head(tower[from])>> \o tower[to];
  end with;
end while;
end algorithm; *)
\* BEGIN TRANSLATION (chksum(pcal) = "1a2110da" /\ chksum(tla) = "19c39e85")
VARIABLE tower

(* define statement *)
D == DOMAIN tower


vars == << tower >>

Init == (* Global variables *)
        /\ tower = <<<<1, 2, 3>>, <<>>, <<>>>>

Next == /\ Assert(tower[3] /= <<1, 2, 3>>, 
                  "Failure of assertion at line 13, column 3.")
        /\ \E from \in {x \in D : tower[x] /= <<>>}:
             \E to \in {
                         y \in D :
                           \/ tower[y] = <<>>
                           \/ Head(tower[from]) < Head(tower[y])
                       }:
               tower' = [tower EXCEPT ![from] = Tail(tower[from]),
                                      ![to] = <<Head(tower[from])>> \o tower[to]]

Spec == Init /\ [][Next]_vars

\* END TRANSLATION 

=============================================================================
\* Modification History
\* Last modified Sat Dec 05 17:41:22 CST 2020 by Administrator
\* Created Sat Dec 05 17:40:38 CST 2020 by Administrator
