-------------------------- MODULE importingModule --------------------------
(* This MODULE just checks whether it can import ImportedModule.

   It is meant to be run from outside of the tla-path-tests directory, with

     TLA_PATH=./tla-path-tests apalache-mc check ./tla-path-tests/ImportingModule.tla

   If checking succeeds, THEN TLA_PATH has worked as expected.
*)

EXTENDS importedModule

=============================================================================
\* Modification History
\* Last modified Sat Dec 12 20:21:21 CST 2020 by Administrator
\* Created Sat Dec 12 20:21:01 CST 2020 by Administrator
