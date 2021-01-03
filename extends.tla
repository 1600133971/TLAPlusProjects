# Tiny TLA+ Example:  Extends

This is a trivial example of having one module (`ExtendsB`) extend and use definitions
from another (`ExtendsA`).

`ExtendsA` just defines the two operators `IsEven` and `IsOdd`.

`ExtendsB` EXTENDS `ExtendsA` and models a trivial program that exercises the operators.

When creating a spec in the TLA+ explorer, use `ExtendsB` as the root-module file.  The explorer will automatically load both modules into editor tabs.
------------------------------ MODULE extends ------------------------------
EXTENDS extendsA, TLC

(*--algorithm extends
begin

assert( IsEven(2) );
assert( IsEven(-2) );
assert( IsOdd(3) );
assert( IsOdd(-3) );

end algorithm;*)
\* BEGIN TRANSLATION (chksum(pcal) = "a6d37c1b" /\ chksum(tla) = "62d037f7")
VARIABLE pc

vars == << pc >>

Init == /\ pc = "Lbl_1"

Lbl_1 == /\ pc = "Lbl_1"
         /\ Assert(( IsEven(2) ), 
                   "Failure of assertion at line 7, column 1.")
         /\ Assert(( IsEven(-2) ), 
                   "Failure of assertion at line 8, column 1.")
         /\ Assert(( IsOdd(3) ), "Failure of assertion at line 9, column 1.")
         /\ Assert(( IsOdd(-3) ), 
                   "Failure of assertion at line 10, column 1.")
         /\ pc' = "Done"

(* Allow infinite stuttering to prevent deadlock on termination. *)
Terminating == pc = "Done" /\ UNCHANGED vars

Next == Lbl_1
           \/ Terminating

Spec == Init /\ [][Next]_vars

Termination == <>(pc = "Done")

\* END TRANSLATION 

=============================================================================
\* Modification History
\* Last modified Sun Jan 03 14:27:38 CST 2021 by Administrator
\* Created Sun Jan 03 14:22:41 CST 2021 by Administrator
