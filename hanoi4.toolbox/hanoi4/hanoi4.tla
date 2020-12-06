------------------------------- MODULE hanoi4 -------------------------------
EXTENDS TLC, Sequences, Integers

CONSTANTS TSIZE, TSPACES, SOLUTION

FullTower[n \in 1..TSIZE] == n \* <<1, 2, 3, ...>>
Board[n \in 1..TSPACES] == IF n = 1 THEN FullTower ELSE <<>>  

IsSensical(state) ==  /\ Len(state) = TSPACES \* Correct spaces
                      /\ \A tower \in DOMAIN state: \* Numbers do not exceed TSIZE
                         \A disc \in DOMAIN state[tower]:
                            state[tower][disc] \in 1..TSIZE
                      /\ \A n \in 1..TSIZE : \* All numbers appear
                         \E tower \in DOMAIN state:
                            \E disc \in DOMAIN state[tower]:
                               n = state[tower][disc] 
ASSUME IsSensical(SOLUTION)

(* --algorithm hanoi4
variables tower = Board;

define 
  D == DOMAIN tower
end define;

begin
while TRUE do
  assert tower /= SOLUTION;
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
\* BEGIN TRANSLATION (chksum(pcal) = "2849a6fc" /\ chksum(tla) = "fc112e89")
VARIABLE tower

(* define statement *)
D == DOMAIN tower


vars == << tower >>

Init == (* Global variables *)
        /\ tower = Board

Next == /\ Assert(tower /= SOLUTION, 
                  "Failure of assertion at line 28, column 3.")
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
\* Last modified Sat Dec 05 17:50:29 CST 2020 by Administrator
\* Created Sat Dec 05 17:43:34 CST 2020 by Administrator
