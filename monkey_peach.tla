---------------------------- MODULE monkey_peach ----------------------------
EXTENDS Naturals, TLC
CONSTANT N

RECURSIVE Times(_,_)
Times(x, y) ==
  IF y <= 1 THEN x
  ELSE x + Times(x, y - 1)

Judge(x) == (x - 1) % 5 = 0

RECURSIVE Result(_,_)
Result(x, y) ==
  IF y <= 1 THEN Times(x + 1, 5) \div 4
  ELSE Result(Times(x + 1, 5) \div 4, y - 1)

RECURSIVE MonkeyPeach(_,_)
MonkeyPeach(S, n) ==
  IF n <= 1 THEN {x \in S: Judge(x)}
  ELSE LET T == {x \in S: Judge(x)} 
       IN MonkeyPeach({Times(x - 1, 4) \div 5: x \in T }, n - 1)

(* --algorithm monkey_peach
variables S = {}, T = {};
begin
  First:
    S := (1..N);
    T := {x \in S: Judge(x)};
  Second:
    S := {Times(x - 1, 4) \div 5: x \in T };
    T := {x \in S: Judge(x)};
  Third:
    S := {Times(x - 1, 4) \div 5: x \in T };
    T := {x \in S: Judge(x)};
  Fourth:
    S := {Times(x - 1, 4) \div 5: x \in T };
    T := {x \in S: Judge(x)};
  Fifth:
    S := {Times(x - 1, 4) \div 5: x \in T };
    T := {x \in S: Judge(x)};
  Display1:
    print {Result(x, 4): x \in T};
  Resur:
    T := MonkeyPeach((1..N), 5);
  Display2:
    print {Result(x, 4): x \in T};
end algorithm *)
\* BEGIN TRANSLATION (chksum(pcal) = "332dce79" /\ chksum(tla) = "7e13525b")
VARIABLES S, T, pc

vars == << S, T, pc >>

Init == (* Global variables *)
        /\ S = {}
        /\ T = {}
        /\ pc = "First"

First == /\ pc = "First"
         /\ S' = (1..N)
         /\ T' = {x \in S': Judge(x)}
         /\ pc' = "Second"

Second == /\ pc = "Second"
          /\ S' = {Times(x-1, 4) \div 5: x \in T }
          /\ T' = {x \in S': Judge(x)}
          /\ pc' = "Third"

Third == /\ pc = "Third"
         /\ S' = {Times(x-1, 4) \div 5: x \in T }
         /\ T' = {x \in S': Judge(x)}
         /\ pc' = "Fourth"

Fourth == /\ pc = "Fourth"
          /\ S' = {Times(x-1, 4) \div 5: x \in T }
          /\ T' = {x \in S': Judge(x)}
          /\ pc' = "Fifth"

Fifth == /\ pc = "Fifth"
         /\ S' = {Times(x-1, 4) \div 5: x \in T }
         /\ T' = {x \in S': Judge(x)}
         /\ pc' = "Display1"

Display1 == /\ pc = "Display1"
            /\ PrintT({Result(x, 4): x \in T})
            /\ pc' = "Resur"
            /\ UNCHANGED << S, T >>

Resur == /\ pc = "Resur"
         /\ T' = MonkeyPeach((1..N), 5)
         /\ pc' = "Display2"
         /\ S' = S

Display2 == /\ pc = "Display2"
            /\ PrintT({Result(x, 4): x \in T})
            /\ pc' = "Done"
            /\ UNCHANGED << S, T >>

(* Allow infinite stuttering to prevent deadlock on termination. *)
Terminating == pc = "Done" /\ UNCHANGED vars

Next == First \/ Second \/ Third \/ Fourth \/ Fifth \/ Display1 \/ Resur
           \/ Display2
           \/ Terminating

Spec == Init /\ [][Next]_vars

Termination == <>(pc = "Done")

\* END TRANSLATION 

=============================================================================
\* Modification History
\* Last modified Sat Dec 05 17:34:13 CST 2020 by Administrator
\* Created Sat Dec 05 15:18:01 CST 2020 by Administrator
