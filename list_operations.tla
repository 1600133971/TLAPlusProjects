# Tiny TLA+ Example:  List Operations

This specification just demonstrates how to perform basic list operations on sequences.

In addition to using the operators `Append`, `Head`, `Tail`, and `\o` from the `Sequences` module, this example defines two versions of a `Reverse` operator, one in a declarative style and one in a functional style using a recursive operator definition.
-------------------------- MODULE list_operations --------------------------
EXTENDS Naturals, Sequences, TLC

CONSTANT N      (* Number of elements *)

(* PlusCal options (-termination) *)

(*--algorithm list_operations

variables 
    list = << >>,
    rlist = << >>,
    i = 1;

define
    \* List reversal operator in declarative style
    Reverse(seq) == [ j \in 1..Len(seq) |-> seq[ Len(seq) - j + 1 ] ]
    
    \* List reversal operator in functional style
    RECURSIVE RecursiveReverse2(_, _) 
    RecursiveReverse2(seq, accum) == IF seq = <<>> THEN accum ELSE RecursiveReverse2( Tail(seq), << Head(seq) >> \o accum )
    RecursiveReverse(seq) == RecursiveReverse2(seq, << >>)
end define;

begin
    Loop:
    while i <= N do
        AppendToList:
        list := Append(list, i);
        rlist := << i >> \o rlist;
        
        CheckList:
        assert( Head(list) = 1 );
        assert( Head(rlist) = i );
        
        assert( list[i] = i );
        assert( rlist[i] = 1 );
        
        assert( Len(list) = i );
        assert( Len(rlist) = i );

        assert( Reverse(list) = rlist );
        assert( Reverse(rlist) = list );

        assert( RecursiveReverse(list) = rlist );
        assert( RecursiveReverse(rlist) = list );

        IncrementCounter:
        i := i + 1;
    end while;
end algorithm;*)
\* BEGIN TRANSLATION (chksum(pcal) = "eabede91" /\ chksum(tla) = "65bab527")
VARIABLES list, rlist, i, pc

(* define statement *)
Reverse(seq) == [ j \in 1..Len(seq) |-> seq[ Len(seq) - j + 1 ] ]


RECURSIVE RecursiveReverse2(_, _)
RecursiveReverse2(seq, accum) == IF seq = <<>> THEN accum ELSE RecursiveReverse2( Tail(seq), << Head(seq) >> \o accum )
RecursiveReverse(seq) == RecursiveReverse2(seq, << >>)


vars == << list, rlist, i, pc >>

Init == (* Global variables *)
        /\ list = << >>
        /\ rlist = << >>
        /\ i = 1
        /\ pc = "Loop"

Loop == /\ pc = "Loop"
        /\ IF i <= N
              THEN /\ pc' = "AppendToList"
              ELSE /\ pc' = "Done"
        /\ UNCHANGED << list, rlist, i >>

AppendToList == /\ pc = "AppendToList"
                /\ list' = Append(list, i)
                /\ rlist' = << i >> \o rlist
                /\ pc' = "CheckList"
                /\ i' = i

CheckList == /\ pc = "CheckList"
             /\ Assert(( Head(list) = 1 ), 
                       "Failure of assertion at line 38, column 9.")
             /\ Assert(( Head(rlist) = i ), 
                       "Failure of assertion at line 39, column 9.")
             /\ Assert(( list[i] = i ), 
                       "Failure of assertion at line 41, column 9.")
             /\ Assert(( rlist[i] = 1 ), 
                       "Failure of assertion at line 42, column 9.")
             /\ Assert(( Len(list) = i ), 
                       "Failure of assertion at line 44, column 9.")
             /\ Assert(( Len(rlist) = i ), 
                       "Failure of assertion at line 45, column 9.")
             /\ Assert(( Reverse(list) = rlist ), 
                       "Failure of assertion at line 47, column 9.")
             /\ Assert(( Reverse(rlist) = list ), 
                       "Failure of assertion at line 48, column 9.")
             /\ Assert(( RecursiveReverse(list) = rlist ), 
                       "Failure of assertion at line 50, column 9.")
             /\ Assert(( RecursiveReverse(rlist) = list ), 
                       "Failure of assertion at line 51, column 9.")
             /\ pc' = "IncrementCounter"
             /\ UNCHANGED << list, rlist, i >>

IncrementCounter == /\ pc = "IncrementCounter"
                    /\ i' = i + 1
                    /\ pc' = "Loop"
                    /\ UNCHANGED << list, rlist >>

(* Allow infinite stuttering to prevent deadlock on termination. *)
Terminating == pc = "Done" /\ UNCHANGED vars

Next == Loop \/ AppendToList \/ CheckList \/ IncrementCounter
           \/ Terminating

Spec == /\ Init /\ [][Next]_vars
        /\ WF_vars(Next)

Termination == <>(pc = "Done")

\* END TRANSLATION 

=============================================================================
\* Modification History
\* Last modified Sun Jan 03 14:41:34 CST 2021 by Administrator
\* Created Sun Jan 03 14:40:21 CST 2021 by Administrator
