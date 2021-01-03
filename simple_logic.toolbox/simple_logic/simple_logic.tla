# Tiny TLA+ Example:  Simple Logic

This is a TLA+ module that asserts some simple logical formulas to
be true.  It is modeled on https://github.com/tlaplus/Examples/blob/master/specifications/SpecifyingSystems/SimpleMath/SimpleMath.tla

Running model code like this is a good way to:

* confirm your grasp of TLA+ mathematical syntax
* check truth-tables if your 1st order logic is rusty
* etc.

You can run this model with the model checker specifying the invariant `Implication`.


At the end of the TLA file there is also an `ASSUME` statement.  This is checked as part of loading the model, and it covers exactly the same logical equation in a single statement.  You can execute this test by running the model checker with **No behavior spec** selected.  If you try this with a broken formula, for example by changing the last clause from `~F \/ G` to `~F \/ ~G` the model checking results will show you an error even though no state count or other model checking information is generated.
---------------------------- MODULE simple_logic ----------------------------
(***************************************************************************)
(* Some simple experiments in logic                                        *)
(***************************************************************************)
VARIABLES X, Y
vars == << X, Y >>

(***************************************************************************)
(* Discover all entries in a 2-value truth table.                          *)
(*                                                                         *)
(* This Init/Next spec will visit all 4 entries.  Since state transitions  *)
(* are arbitrary, it will never deadlock.                                  *)
(***************************************************************************)
Init == 
    /\ X \in {TRUE, FALSE}
    /\ Y \in {TRUE, FALSE}

Next == 
    /\ X' \in {TRUE, FALSE}
    /\ Y' \in {TRUE, FALSE}

(***************************************************************************)
(* Check the definition of implication.                                    *)
(* -> Specify Implication as an invariant of the model.                    *)
(***************************************************************************)
Foo == 
    /\ X => Y

Bar == 
    /\ ~X \/ Y

Implication == 
    /\ (Foo = Bar)

(***************************************************************************)
(* Check the same thing using an ASSUME.                                   *)
(* No model steps necessary, you can run the model with no behavioral spec.*)
(***************************************************************************)
ASSUME
  \A F, G \in {TRUE, FALSE} : (F => G) <=> ~F \/ G

=============================================================================
\* Modification History
\* Last modified Sun Jan 03 14:51:29 CST 2021 by Administrator
\* Created Sun Jan 03 14:50:34 CST 2021 by Administrator
