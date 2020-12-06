-------------------------------- MODULE sum --------------------------------
EXTENDS Naturals, TLC, FiniteSets, Functions, FiniteSetsExt

(* --algorithm sum
variables account = {1, 2, 3, 4, 5}, count = 0;
begin
    A: count := Sum(account);
    B: print count;
end algorithm *)
\* BEGIN TRANSLATION (chksum(pcal) = "775fc70f" /\ chksum(tla) = "e3665052")
VARIABLES account, count, pc

vars == << account, count, pc >>

Init == (* Global variables *)
        /\ account = {1, 2, 3, 4, 5}
        /\ count = 0
        /\ pc = "A"

A == /\ pc = "A"
     /\ count' = Sum(account)
     /\ pc' = "B"
     /\ UNCHANGED account

B == /\ pc = "B"
     /\ PrintT(count)
     /\ pc' = "Done"
     /\ UNCHANGED << account, count >>

(* Allow infinite stuttering to prevent deadlock on termination. *)
Terminating == pc = "Done" /\ UNCHANGED vars

Next == A \/ B
           \/ Terminating

Spec == Init /\ [][Next]_vars

Termination == <>(pc = "Done")

\* END TRANSLATION 

=============================================================================
\* Modification History
\* Last modified Sat Dec 05 19:44:20 CST 2020 by Administrator
\* Created Tue Dec 01 21:46:10 CST 2020 by Administrator
