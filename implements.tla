# Tiny TLA+ Example:  Implements

This is a trivial example of having one module (`ImplementsB`) extend and use definitions
from another (`ImplementsA`) with parameterization and namespacing.

`ImplementsA` just defines the (local) variable `A`.

`ImplementsB` creates two instances of `ImplementsA`, one named `X` and one named `Y`.

When creating a spec in the TLA+ explorer, use `ImplementsB` as the root-module file.  The explorer will automatically load both modules into editor tabs.
----------------------------- MODULE implements -----------------------------
EXTENDS TLC, Integers

(*--algorithm implements
variables
    a = 2,
    b = 3;
       
define
    \* We can initialize our instances from variables, but
    \* as we see below, changing the variable does not then update
    \* the instance
    X == INSTANCE implementsA WITH A <- a
    Y == INSTANCE implementsA WITH A <- b
    \* We can also have an instance that requires parameters
    \* when it's used.
    Z(A) == INSTANCE implementsA
end define;

begin

assert( X!IsEven );
assert( Y!IsOdd );

\* This changes a but not X!A
a := 3;
assert( X!IsEven );

\* This changes Z!A
a := 3;
assert( Z(a)!IsOdd );
a := 4;
assert( Z(a)!IsEven );
end algorithm;*)
\* BEGIN TRANSLATION (chksum(pcal) = "1914f014" /\ chksum(tla) = "bc332ac4")
VARIABLES a, b, pc

(* define statement *)
X == INSTANCE implementsA WITH A <- a
Y == INSTANCE implementsA WITH A <- b


Z(A) == INSTANCE implementsA


vars == << a, b, pc >>

Init == (* Global variables *)
        /\ a = 2
        /\ b = 3
        /\ pc = "Lbl_1"

Lbl_1 == /\ pc = "Lbl_1"
         /\ Assert(( X!IsEven ), 
                   "Failure of assertion at line 32, column 1.")
         /\ Assert(( Y!IsOdd ), "Failure of assertion at line 33, column 1.")
         /\ a' = 3
         /\ Assert(( X!IsEven ), 
                   "Failure of assertion at line 37, column 1.")
         /\ pc' = "Lbl_2"
         /\ b' = b

Lbl_2 == /\ pc = "Lbl_2"
         /\ a' = 3
         /\ Assert(( Z(a')!IsOdd ), 
                   "Failure of assertion at line 41, column 1.")
         /\ pc' = "Lbl_3"
         /\ b' = b

Lbl_3 == /\ pc = "Lbl_3"
         /\ a' = 4
         /\ Assert(( Z(a')!IsEven ), 
                   "Failure of assertion at line 43, column 1.")
         /\ pc' = "Done"
         /\ b' = b

(* Allow infinite stuttering to prevent deadlock on termination. *)
Terminating == pc = "Done" /\ UNCHANGED vars

Next == Lbl_1 \/ Lbl_2 \/ Lbl_3
           \/ Terminating

Spec == Init /\ [][Next]_vars

Termination == <>(pc = "Done")

\* END TRANSLATION 

=============================================================================
\* Modification History
\* Last modified Sun Jan 03 14:34:21 CST 2021 by Administrator
\* Created Sun Jan 03 14:28:35 CST 2021 by Administrator
