# Tiny TLA+ Example:  Linear Search

This is an extremely simple example of using TLA+ to validate the behavior of a single-threaded algorithm.

This is adapted from the the binary search example at: 
   http://herbrete.vvv.enseirb-matmeca.fr/IF311/lecture01.xhtml
   

To validate this algorithm, create a model with values like

```
     N = 3
     MAXINT = 5
```
     
The model checker will examine all MAXINT^N possible input arrays for
all MAXINT possible values of X and ensure the correct result is returned.

To see the model checker FAIL, just break the final condition, for example
by specifying `ar[j] = x-1`
--------------------------- MODULE linear_search ---------------------------
EXTENDS Naturals, TLC

CONSTANT N      (* Size of arrays *)
CONSTANT MAXINT (* Max integer value *)

(* PlusCal options (-termination) *)

(*--algorithm LinearSearch

variables 
    ar \in [ 1..N -> 0..MAXINT ],  (* Array of N integers in 0..MAXINT *)
    x \in 0..MAXINT,              (* Value to find *)
    found = FALSE,
    i = 1;

begin

    Loop:
    while i <= N /\ ~found do
        found := ar[i]=x;
        i := i + 1;
    end while;
        
    FinalCheck:
    assert( found <=> (\E j \in 1..N : ar[j] = x) )      

end algorithm;*)
\* BEGIN TRANSLATION (chksum(pcal) = "faba78d2" /\ chksum(tla) = "7b41290d")
VARIABLES ar, x, found, i, pc

vars == << ar, x, found, i, pc >>

Init == (* Global variables *)
        /\ ar \in [ 1..N -> 0..MAXINT ]
        /\ x \in 0..MAXINT
        /\ found = FALSE
        /\ i = 1
        /\ pc = "Loop"

Loop == /\ pc = "Loop"
        /\ IF i <= N /\ ~found
              THEN /\ found' = (ar[i]=x)
                   /\ i' = i + 1
                   /\ pc' = "Loop"
              ELSE /\ pc' = "FinalCheck"
                   /\ UNCHANGED << found, i >>
        /\ UNCHANGED << ar, x >>

FinalCheck == /\ pc = "FinalCheck"
              /\ Assert(( found <=> (\E j \in 1..N : ar[j] = x) ), 
                        "Failure of assertion at line 26, column 5.")
              /\ pc' = "Done"
              /\ UNCHANGED << ar, x, found, i >>

(* Allow infinite stuttering to prevent deadlock on termination. *)
Terminating == pc = "Done" /\ UNCHANGED vars

Next == Loop \/ FinalCheck
           \/ Terminating

Spec == /\ Init /\ [][Next]_vars
        /\ WF_vars(Next)

Termination == <>(pc = "Done")

\* END TRANSLATION 

=============================================================================
\* Modification History
\* Last modified Sun Jan 03 14:38:59 CST 2021 by Administrator
\* Created Sun Jan 03 14:37:34 CST 2021 by Administrator
