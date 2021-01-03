--------------------------- MODULE function_test ---------------------------
EXTENDS Naturals, FiniteSets, TLC, Sequences

(*
--algorithm diehard_pluscal {
  define {
    (* The set of permutations of a finite set, represented as sequences.  *)
    PermSeqs(S) ==
      LET perms[ss \in SUBSET S] ==
           IF ss = {} THEN { << >> }
           ELSE LET ps == [ x \in ss |-> 
                            { Append(sq,x) : sq \in perms[ss \ {x}] } ]
                IN  UNION { ps[x] : x \in ss }
      IN  perms[S]
      
    (* Range of a function, e.g. elements of a sequence *)
    Range(f) == { f[x] : x \in DOMAIN f }
    
    (* Remove element at index i from a sequence.                          *)
    (* Assumes that i \in 1..Len(seq)                                      *)
    Drop(seq,i) == SubSeq(seq, 1, i-1) \circ SubSeq(seq, i+1, Len(seq))
  }
  {
    print PermSeqs({"r1", "r2", "r3"});
    print Range(<<"c1", "c2", "c3">>);
    print Drop(<<"c1", "c2", "c3">>, 2);
    print Seq({"c1", "c2", "c3"});
    print [1..4 -> {"c1", "c2", "c3"}]
  }
}
*)
\* BEGIN TRANSLATION (chksum(pcal) = "87117a9d" /\ chksum(tla) = "b06a00d4")
VARIABLE pc

(* define statement *)
PermSeqs(S) ==
  LET perms[ss \in SUBSET S] ==
       IF ss = {} THEN { << >> }
       ELSE LET ps == [ x \in ss |->
                        { Append(sq,x) : sq \in perms[ss \ {x}] } ]
            IN  UNION { ps[x] : x \in ss }
  IN  perms[S]


Range(f) == { f[x] : x \in DOMAIN f }



Drop(seq,i) == SubSeq(seq, 1, i-1) \circ SubSeq(seq, i+1, Len(seq))


vars == << pc >>

Init == /\ pc = "Lbl_1"

Lbl_1 == /\ pc = "Lbl_1"
         /\ PrintT(PermSeqs({"r1", "r2", "r3"}))
         /\ PrintT(Range(<<"c1", "c2", "c3">>))
         /\ PrintT(Drop(<<"c1", "c2", "c3">>, 2))
         /\ PrintT(Seq({"c1", "c2", "c3"}))
         /\ PrintT([1..4 -> {"c1", "c2", "c3"}])
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
\* Last modified Sat Dec 26 17:56:09 CST 2020 by Administrator
\* Created Sat Dec 26 17:04:47 CST 2020 by Administrator
