--------------------------- MODULE insertion_sort ---------------------------
EXTENDS Sequences, Naturals, TLC

CONSTANTS MaxValue

IsSorted(S) == \A x \in 1..Len(S):
                 \A y \in 1 .. x:
                   y <= x

\* from learntla.com/tla/sets
Range(T) == { T[x]: x \in DOMAIN T }

\* from learntla.com/tla/functions
PermutationKey(n) == { key \in [1..n -> 1..n]: Range(key) = 1..n }

IndexLTE(seq, n) ==
  LET indexesLTE == {x \in 1..Len(seq) : seq[x] <= n}
  IN IF indexesLTE = {}
     THEN 0
     ELSE CHOOSE x \in indexesLTE: \A y \in {y \in indexesLTE: y /= x}: y < x

Left(seq, n) ==
  LET rightIndex == IndexLTE(seq, n) IN
  IF rightIndex = 0
  THEN << >>
  ELSE SubSeq(seq, 1, rightIndex)

Right(seq, n) ==
  LET rightIndex == IndexLTE(seq, n) IN
  IF rightIndex = Len(seq)
  THEN << >>
  ELSE SubSeq(seq, rightIndex + 1, Len(seq))

(* --algorithm InsertionSort
variables
  input \in PermutationKey(MaxValue),
  index = 1,
  output = << >>;
  \* helper variables
 begin  \* algorithm implementation
 sort:
   while index <= Len(input) do
     output := Left(output, input[index])
                \o << input[index] >>
    \o Right(output, input[index]);
     index := index + 1;
   end while;
 print(output);
 assert Len(output) = Len(input);
 assert IsSorted(output)
end algorithm; *)
\* BEGIN TRANSLATION (chksum(pcal) = "d85c5101" /\ chksum(tla) = "f0cf863")
VARIABLES input, index, output, pc

vars == << input, index, output, pc >>

Init == (* Global variables *)
        /\ input \in PermutationKey(MaxValue)
        /\ index = 1
        /\ output = << >>
        /\ pc = "sort"

sort == /\ pc = "sort"
        /\ IF index <= Len(input)
              THEN /\ output' =            Left(output, input[index])
                                            \o << input[index] >>
                                \o Right(output, input[index])
                   /\ index' = index + 1
                   /\ pc' = "sort"
              ELSE /\ PrintT((output))
                   /\ Assert(Len(output) = Len(input), 
                             "Failure of assertion at line 49, column 2.")
                   /\ Assert(IsSorted(output), 
                             "Failure of assertion at line 50, column 2.")
                   /\ pc' = "Done"
                   /\ UNCHANGED << index, output >>
        /\ input' = input

(* Allow infinite stuttering to prevent deadlock on termination. *)
Terminating == pc = "Done" /\ UNCHANGED vars

Next == sort
           \/ Terminating

Spec == Init /\ [][Next]_vars

Termination == <>(pc = "Done")

\* END TRANSLATION 

=============================================================================
\* Modification History
\* Last modified Sat Dec 05 20:56:54 CST 2020 by Administrator
\* Created Sat Dec 05 20:54:23 CST 2020 by Administrator
