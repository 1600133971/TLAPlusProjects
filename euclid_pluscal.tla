--------------------------- MODULE euclid_pluscal ---------------------------
EXTENDS Integers, TLC

p | q == \E d \in 1..q : q = p * d
Divisors(q) == {d \in 1..q : d | q}
Maximum(S) == CHOOSE x \in S : \A y \in S : x >= y
GCD(p,q) == Maximum(Divisors(p) \cap Divisors(q))
Number == Nat \ {0}

CONSTANTS M, N

(*
--algorithm Euclid {
  variables x \in 1..M, y \in 1..N, x0 = x, y0 = y;
  {
    while (x # y) {
      if (x < y) { y := y - x; }
      else { x := x -y; }
    };
    assert x = GCD(x0, y0) /\ y = GCD(x0, y0)
  }
}
*)
\* BEGIN TRANSLATION (chksum(pcal) = "191bef32" /\ chksum(tla) = "3c2b8b6d")
VARIABLES x, y, x0, y0, pc

vars == << x, y, x0, y0, pc >>

Init == (* Global variables *)
        /\ x \in 1..M
        /\ y \in 1..N
        /\ x0 = x
        /\ y0 = y
        /\ pc = "Lbl_1"

Lbl_1 == /\ pc = "Lbl_1"
         /\ IF x # y
               THEN /\ IF x < y
                          THEN /\ y' = y - x
                               /\ x' = x
                          ELSE /\ x' = x-y
                               /\ y' = y
                    /\ pc' = "Lbl_1"
               ELSE /\ Assert(x = GCD(x0, y0) /\ y = GCD(x0, y0), 
                              "Failure of assertion at line 20, column 5.")
                    /\ pc' = "Done"
                    /\ UNCHANGED << x, y >>
         /\ UNCHANGED << x0, y0 >>

(* Allow infinite stuttering to prevent deadlock on termination. *)
Terminating == pc = "Done" /\ UNCHANGED vars

Next == Lbl_1
           \/ Terminating

Spec == Init /\ [][Next]_vars

Termination == <>(pc = "Done")

\* END TRANSLATION 

=============================================================================
\* Modification History
\* Last modified Sun Dec 13 18:28:29 CST 2020 by Administrator
\* Created Sun Dec 13 18:24:05 CST 2020 by Administrator
