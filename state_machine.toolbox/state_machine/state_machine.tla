# Tiny TLA+ Example:  State Machine

This example models a trivial state machine that accepts the regular expression `X*Y` (i.e. zero or more X followed by a Y).

The state diagram looks like this:

![State Machine for X*Y](StateMachineDiagram.png)

Since we have modelled the machine using PlusCal, the TLA+ model also includes a variable called `PC` (for "program counter") representing the current point of execution.  The model checker therefore finds *4* states (instead of 3) with the following state diagram:


![PlusCal State Machine](PlusCalDiagram.png)
--------------------------- MODULE state_machine ---------------------------
(*--fair algorithm state_machine
variables
    state = "start";

define
    \* INVARIANT:  we should always be in a valid state 
    StateValid == state \in {"start", "reading", "end"}
    
    \* TEMPORAL FORMULA:  since the process is fair, we will always
    \* eventually get a Y and terminate, and once we terminate we will
    \* stay terminated.
    \*
    \* NOTE:  this condition does not actually hold true.
    \* See:  https://stackoverflow.com/questions/55128505/tla-why-does-fair-algorithm-still-stutter
    MachineTerminates == <>[](state = "end")
end define;
    
begin
Loop:    
while state /= "end" do
    either
        \* we got an X, keep going
        state := "reading"
    or
        \* we got a Y, terminate
        state := "end"
    end either;
end while;
end algorithm;*)
\* BEGIN TRANSLATION (chksum(pcal) = "1be38809" /\ chksum(tla) = "792516a7")
VARIABLES state, pc

(* define statement *)
StateValid == state \in {"start", "reading", "end"}







MachineTerminates == <>[](state = "end")


vars == << state, pc >>

Init == (* Global variables *)
        /\ state = "start"
        /\ pc = "Loop"

Loop == /\ pc = "Loop"
        /\ IF state /= "end"
              THEN /\ \/ /\ state' = "reading"
                      \/ /\ state' = "end"
                   /\ pc' = "Loop"
              ELSE /\ pc' = "Done"
                   /\ state' = state

(* Allow infinite stuttering to prevent deadlock on termination. *)
Terminating == pc = "Done" /\ UNCHANGED vars

Next == Loop
           \/ Terminating

Spec == /\ Init /\ [][Next]_vars
        /\ WF_vars(Next)

Termination == <>(pc = "Done")

\* END TRANSLATION 

=============================================================================
\* Modification History
\* Last modified Sun Jan 03 14:59:49 CST 2021 by Administrator
\* Created Sun Jan 03 14:58:26 CST 2021 by Administrator
