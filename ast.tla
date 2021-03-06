-------------------------------- MODULE ast --------------------------------
EXTENDS Integers
\*CONSTANTS Proc, NoPrnt, root, nbrs

N == 5
Proc == 1..N
NoPrnt == 10
root == 1
nbrs == { <<1, 2>>, <<2, 3>>, <<2, 4>>, <<3, 4>>, <<4, 5>>, <<5, 1>> }
a <: b == b

\*ASSUME NoPrnt \notin Proc /\ nbrs \subseteq Proc \times Proc
VARIABLES prnt, rpt, msg
vars == <<prnt, rpt, msg>> 
             
Init == /\ prnt = [i \in Proc |-> NoPrnt]
        /\ rpt = [i \in Proc |-> FALSE]
        /\ msg = {} <: {<<Int, Int>>}

CanSend(i, k) ==  (<<i, k>> \in nbrs) /\ (i = root \/ prnt[i] # NoPrnt)

Update(i, j) == /\ prnt' = [prnt EXCEPT ![i] = j]
                /\ UNCHANGED <<rpt, msg>>
    
Send(i, k) == /\ CanSend(i, k) /\ (<<i, k>> \notin msg)
              /\ msg' = msg \cup {<<i, k>>}
              /\ UNCHANGED <<prnt, rpt>>
                                                                                    
Parent(i) == /\ prnt[i] # NoPrnt /\ ~rpt[i]
             /\ rpt' = [rpt EXCEPT ![i] = TRUE] 
             /\ UNCHANGED <<msg, prnt>>
             
Next ==
  \E i, j, k \in Proc:
    IF i # root /\ prnt[i] = NoPrnt /\ <<j, i>> \in msg
    THEN Update(i, j)
    ELSE \/ Send(i, k) \/ Parent(i) 
         \/ UNCHANGED <<prnt, msg, rpt>>                   
                                                        
Spec == /\ Init /\ [][Next]_vars 
        /\ WF_vars(\E i, j, k \in Proc:
            IF i # root /\ prnt[i] = NoPrnt /\ <<j, i>> \in msg
            THEN Update(i, j)
            ELSE \/ Send(i, k) \/ Parent(i) 
                 \/ UNCHANGED <<prnt, msg, rpt>>)
                                           
TypeOK == /\ \A i \in Proc : prnt[i] = NoPrnt \/ <<i, prnt[i]>> \in nbrs
          /\ rpt \in [Proc -> BOOLEAN]  
          /\ msg \subseteq Proc \times Proc
  
Termination == <>(\A i \in Proc : i = root \/ (prnt[i] # NoPrnt /\ <<i, prnt[i]>> \in nbrs)) 

OneParent == [][\A i \in Proc : prnt[i] # NoPrnt => prnt[i] = prnt'[i]]_vars

SntMsg == \A i \in Proc: (i # root /\ prnt[i] = NoPrnt => \A j \in Proc: <<i ,j>> \notin msg)

=============================================================================
\* Modification History
\* Last modified Sat Dec 12 20:36:24 CST 2020 by Administrator
\* Created Sat Dec 12 20:36:08 CST 2020 by Administrator
