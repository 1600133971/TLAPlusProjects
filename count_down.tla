
# Tiny TLA+ Example:  Count Down

This is a trivial countdown timer that counts from 10 to 0.  No rocket
ship is included.


To validate that the count decreases, we can either model check with the invariant `CountHasDecreased` or with the equivalent temporal property `CountDecreases`.

To ensure that the count reaches zero, we can check the temporal property `CountReachesZero`.
----------------------------- MODULE count_down -----------------------------
EXTENDS Naturals, TLC

(* PlusCal options (-termination) *)

(*--algorithm count_down

variables
    N = 10,
    i = N,
    prev = i+1;

define
    \* Invariant for the model checker:  i is less than prev
    \* This is a safety condition we can check in every state
    CountHasDecreased == i<prev
    
    \* Temporal property for the model checker:  i is always less than prev.
    \* This is the same safety condition, but we can specify it this way (globally)
    \* as an alternative to specifying it as above.
    CountDecreases == [](i<prev)
    
    \* Temporal property for the model checker: i eventually reaches zero.
    CountReachesZero == <>(i=0)
end define;

begin

    while i > 0 do
        prev := i;
        i := i - 1;
    end while;
    
        
end algorithm;*)
\* BEGIN TRANSLATION (chksum(pcal) = "380f9256" /\ chksum(tla) = "28532ef0")
VARIABLES N, i, prev, pc

(* define statement *)
CountHasDecreased == i<prev




CountDecreases == [](i<prev)


CountReachesZero == <>(i=0)


vars == << N, i, prev, pc >>

Init == (* Global variables *)
        /\ N = 10
        /\ i = N
        /\ prev = i+1
        /\ pc = "Lbl_1"

Lbl_1 == /\ pc = "Lbl_1"
         /\ IF i > 0
               THEN /\ prev' = i
                    /\ i' = i - 1
                    /\ pc' = "Lbl_1"
               ELSE /\ pc' = "Done"
                    /\ UNCHANGED << i, prev >>
         /\ N' = N

(* Allow infinite stuttering to prevent deadlock on termination. *)
Terminating == pc = "Done" /\ UNCHANGED vars

Next == Lbl_1
           \/ Terminating

Spec == /\ Init /\ [][Next]_vars
        /\ WF_vars(Next)

Termination == <>(pc = "Done")

\* END TRANSLATION 

=============================================================================
\* Modification History
\* Last modified Sun Jan 03 14:18:24 CST 2021 by Administrator
\* Created Sun Jan 03 14:17:19 CST 2021 by Administrator
