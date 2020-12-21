------------------------ MODULE allocator_refinement ------------------------
(*********************************************************************)
(* The scheduling allocator is a refinement of the simple allocator. *)
(*********************************************************************)

EXTENDS allocator_scheduling

Simple == INSTANCE allocator
SimpleAllocator == Simple!SimpleAllocator

THEOREM
  Allocator => SimpleAllocator

=============================================================================
\* Modification History
\* Last modified Fri Dec 18 22:22:47 CST 2020 by Administrator
\* Created Fri Dec 18 22:21:46 CST 2020 by Administrator
