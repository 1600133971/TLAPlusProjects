# Tiny TLA+ Example:  Race Condition

This is the simplest example I could think of that exhibits a race condition.

We start with a variable, `count=0`.

Two processes (`A` and `B`) each attempt to read count and increment it.

If this were atomic, then we would end with `count=2`, but since the reads can overlap this sometimes fails.
--------------------------- MODULE race_condition ---------------------------
EXTENDS Integers, TLC

(* PlusCal options (-termination) *)

(*--algorithm RaceCondition

variables 
    count = 0;

define
    \* Temporal property to check:  After each of our two processes has incremented
    \* count, count should be 2.  (This fails because one process may read a stale value
    \* while the other is in the middle of incrementing.)
    CountReachesTwo == <>[](count=2)
end define;

process p \in {"A", "B"}
    variable v = -1;
begin
    Read:
        v := count;
    Write: 
        count := v+1;
end process;

end algorithm;*)
\* BEGIN TRANSLATION (chksum(pcal) = "cda558b1" /\ chksum(tla) = "68d761ea")
VARIABLES count, pc

(* define statement *)
CountReachesTwo == <>[](count=2)

VARIABLE v

vars == << count, pc, v >>

ProcSet == ({"A", "B"})

Init == (* Global variables *)
        /\ count = 0
        (* Process p *)
        /\ v = [self \in {"A", "B"} |-> -1]
        /\ pc = [self \in ProcSet |-> "Read"]

Read(self) == /\ pc[self] = "Read"
              /\ v' = [v EXCEPT ![self] = count]
              /\ pc' = [pc EXCEPT ![self] = "Write"]
              /\ count' = count

Write(self) == /\ pc[self] = "Write"
               /\ count' = v[self]+1
               /\ pc' = [pc EXCEPT ![self] = "Done"]
               /\ v' = v

p(self) == Read(self) \/ Write(self)

(* Allow infinite stuttering to prevent deadlock on termination. *)
Terminating == /\ \A self \in ProcSet: pc[self] = "Done"
               /\ UNCHANGED vars

Next == (\E self \in {"A", "B"}: p(self))
           \/ Terminating

Spec == /\ Init /\ [][Next]_vars
        /\ \A self \in {"A", "B"} : WF_vars(p(self))

Termination == <>(\A self \in ProcSet: pc[self] = "Done")

\* END TRANSLATION 

=============================================================================
\* Modification History
\* Last modified Sun Jan 03 14:44:23 CST 2021 by Administrator
\* Created Sun Jan 03 14:43:40 CST 2021 by Administrator
