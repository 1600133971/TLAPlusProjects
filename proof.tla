------------------------------- MODULE proof -------------------------------
EXTENDS Naturals, Sequences, TLAPS

HasSqrt(Y) == \E k \in 1..Y : k * k = Y
Divides(n, d) == d > 0 /\ \E k \in Nat : n = d * k

(* --algorithm proof
begin     
 skip;
end algorithm; *)
\* BEGIN TRANSLATION (chksum(pcal) = "dea71440" /\ chksum(tla) = "af3d9146")
VARIABLE pc

vars == << pc >>

Init == /\ pc = "Lbl_1"

Lbl_1 == /\ pc = "Lbl_1"
         /\ TRUE
         /\ pc' = "Done"

(* Allow infinite stuttering to prevent deadlock on termination. *)
Terminating == pc = "Done" /\ UNCHANGED vars

Next == Lbl_1
           \/ Terminating

Spec == Init /\ [][Next]_vars

Termination == <>(pc = "Done")

\* END TRANSLATION 

THEOREM OnePlusOne1 == 1 + 1 = 2
PROOF OBVIOUS

THEOREM OnePlusOne2 == 1 + 1 = 2
PROOF 
  OBVIOUS
  
THEOREM OnePlusOne3 == 1 + 1 = 2  OBVIOUS

THEOREM OnePlusOne4 == 
  1 + 1 = 2  
PROOF OBVIOUS

THEOREM Transitive == 
  ASSUME 
    NEW X \in Nat,
    NEW Y \in Nat,
    NEW Z \in Nat,
    X > Y,
    Y > Z
    PROVE X > Z + 1
PROOF 
  OBVIOUS
        
THEOREM TheseHaveSqrt ==
    ASSUME
        NEW X \in {4, 9}
    PROVE HasSqrt(X)
PROOF 
    <1>1 HasSqrt(4) /\ HasSqrt(9) BY DEF HasSqrt
    <1>2 QED BY <1>1
    
THEOREM LinearCombinationDivides == 
    ASSUME
        NEW A \in Nat,
        NEW B \in Nat,
        NEW C \in Nat,
        Divides(B, A),
        Divides(C, A)
    PROVE
        \A x, y \in Nat : Divides((B * x) + (C * y), A)
PROOF
    <1>1  PICK k \in Nat : B = A * k BY DEF Divides
    <1>2  PICK m \in Nat : C = A * m BY DEF Divides
    <1>3  TAKE x \in Nat 
    <1>4  (B * x) = (A * k) * x BY <1>1
    <1>5  TAKE y \in Nat
    <1>6  (C * y) = (A * m) * y BY <1>2
    <1>7  (B * x) + (C * y) = ((A * k) * x) + ((A * m) * y) BY <1>1, <1>2
    <1>8  ((A * k) * x) + ((A * m) * y) = A * (k * x + m * y) BY <1>7
    <1>9  (B * x) + (C * y) = A * (k * x + m * y) BY <1>7, <1>8
    <1>10 QED BY <1>9 DEF Divides
    
THEOREM LinearCombinationDivides1 == 
    ASSUME
        NEW A \in Nat,
        NEW B \in Nat,
        NEW C \in Nat,
        Divides(B, A),
        Divides(C, A)
    PROVE
        \A x, y \in Nat : Divides((B * x) + (C * y), A)
PROOF
    <1>1 QED BY DEF Divides
=============================================================================
\* Modification History
\* Last modified Wed Dec 23 23:19:45 CST 2020 by Administrator
\* Created Wed Dec 23 21:14:46 CST 2020 by Administrator
