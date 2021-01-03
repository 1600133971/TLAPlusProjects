# Tiny TLA+ Example:  Secret Santa

This is an extremely simple example of using TLA+ to model a concurrent system.

In our system, we have N people participating in a "Secret Santa" exchange.  Each person is assigned one other person to give a gift to.  They can do this in any order.  Once the exchange completes, we expect each person to have received a gift.

There's no opportunity for deadlock here.

To validate that the exchange succeeds, create a model with values like

```
     N = 3
```

The model can also specify the invariants

```
  Termination   
  EverybodyGetsAGift
```

The model checker will run the gift exchange with every possible assignment
of givers to receivers and confirm that they all succeed.
---------------------------- MODULE secret_santa ----------------------------
EXTENDS Naturals, TLC

CONSTANT N      (* Number of participants *)

(* PlusCal options (-termination) *)

(*--algorithm secret_santa

variables 
    (* a legal assignment maps each giver to a unique receiver different from themself *)
    assignment \in {p \in Permutations(1..N) : (\A i \in (1..N): (p[i] /= i))}, 
    (* keep track of who has received a gift *)
    received = [ i \in 1..N |-> FALSE],
    (* keep track of how many gifts have been given *)
    gifts_given = 0;

define
    (* Temporal Invariant -- add this as a property of the model.
       Eventually everybody has a gift. *)
    EverybodyGetsGift == <>[]( \A i \in 1..N: received[i] )
end define;


(* Everybody will, in their own time, give a gift to their assigned receiver *)
process giver \in (1..N)
variables
    recipient = assignment[ self ];
begin
    Give:
        received[ recipient ] := TRUE;
        gifts_given := gifts_given + 1;
end process;

(* We could also have a monitor who checks that the gift exchange has
   succeeded.  For this spec it's redundant since we have a stronger
   check with the invariant EverybodyGetsGift.  But if it were possible
   for some behaviors where everybody gives their gift and some behaviors
   where the exchange never finishes, then this monitor would still validate
   the end state for behaviors where the exchange does complete. *)
process monitor = N+1
begin
    Monitor:
    await gifts_given=N;
    assert( \A i \in 1..N : received[i])
end process;
end algorithm;*)
\* BEGIN TRANSLATION (chksum(pcal) = "129ece1e" /\ chksum(tla) = "514d853c")
VARIABLES assignment, received, gifts_given, pc

(* define statement *)
EverybodyGetsGift == <>[]( \A i \in 1..N: received[i] )

VARIABLE recipient

vars == << assignment, received, gifts_given, pc, recipient >>

ProcSet == ((1..N)) \cup {N+1}

Init == (* Global variables *)
        /\ assignment \in {p \in Permutations(1..N) : (\A i \in (1..N): (p[i] /= i))}
        /\ received = [ i \in 1..N |-> FALSE]
        /\ gifts_given = 0
        (* Process giver *)
        /\ recipient = [self \in (1..N) |-> assignment[ self ]]
        /\ pc = [self \in ProcSet |-> CASE self \in (1..N) -> "Give"
                                        [] self = N+1 -> "Monitor"]

Give(self) == /\ pc[self] = "Give"
              /\ received' = [received EXCEPT ![ recipient[self] ] = TRUE]
              /\ gifts_given' = gifts_given + 1
              /\ pc' = [pc EXCEPT ![self] = "Done"]
              /\ UNCHANGED << assignment, recipient >>

giver(self) == Give(self)

Monitor == /\ pc[N+1] = "Monitor"
           /\ gifts_given=N
           /\ Assert(( \A i \in 1..N : received[i]), 
                     "Failure of assertion at line 68, column 5.")
           /\ pc' = [pc EXCEPT ![N+1] = "Done"]
           /\ UNCHANGED << assignment, received, gifts_given, recipient >>

monitor == Monitor

(* Allow infinite stuttering to prevent deadlock on termination. *)
Terminating == /\ \A self \in ProcSet: pc[self] = "Done"
               /\ UNCHANGED vars

Next == monitor
           \/ (\E self \in (1..N): giver(self))
           \/ Terminating

Spec == /\ Init /\ [][Next]_vars
        /\ \A self \in (1..N) : WF_vars(giver(self))
        /\ WF_vars(monitor)

Termination == <>(\A self \in ProcSet: pc[self] = "Done")

\* END TRANSLATION 

=============================================================================
\* Modification History
\* Last modified Sun Jan 03 14:48:51 CST 2021 by Administrator
\* Created Sun Jan 03 14:47:10 CST 2021 by Administrator
