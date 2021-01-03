------------------------------ MODULE syncCon3 ------------------------------
(****************************************************************)
(* Synchronized consensus *)
(***************************************************************)
EXTENDS Integers, Sequences, FiniteSets, TLC
CONSTANTS N, FAILNUM
ASSUME N=<7 /\ 0=<FAILNUM /\ FAILNUM=<4
Nodes == 1..N
(* 
--algorithm syncCon3
{variable FailNum=FAILNUM, \* Initialization block
         up=[n \in Nodes |-> TRUE]; \* nodes are up
         pt=[n \in Nodes |-> 0];  \* nodes are at round 0
         t=[n \in Nodes |-> FALSE]; \* nodes are not terminated  
         d=[n \in Nodes |-> -1]; \* nodes are not decided           
         mb=[n \in Nodes |-> {}]; \* nodes have mailbox as emptyset

  define{
  SetMin(S) == CHOOSE i \in S : \A j \in S : i =< j
  } 

  macro MaybeFail() {
      if (FailNum>0 /\ up[self]) 
         {either 
           {up[self]:=FALSE; FailNum:=FailNum-1;} \* Node may fail 
          or skip; }; \* or not
  }

  fair process (n \in Nodes)
  variable pmb={}, Q={};  
  {
P: while (up[self] /\ ~t[self]){
     if (d[self]=-1) d[self]:=self; \* vote is set
     Q:=Nodes; \* send message to up nodes
PS:  while (up[self] /\ Q # {}){ \* send vote to mb[p] one by one; this node can fail in between
         with (p \in Q) { 
          if (pt[p]>=pt[self] \/ ~up[p]){\* send msgs for the same round
            mb[p]:= mb[p] \union {d[self],self}; 
            Q:= Q \ {p};}; \* also down process with stale pt should not stop progress
          MaybeFail();
         };               
      };\* end_while
      if (up[self]) pt[self]:= pt[self]+1; \* move to next round
PR:   await (up[self] /\ (\A k \in Nodes: (up[k] /\ ~t[k]) => pt[k]>=pt[self])); \* wait for others to move
      d[self]:=SetMin(mb[self]);
      if (pmb=mb[self]) t[self]:=TRUE;
      pmb:=mb[self];
      mb[self]:={};
   }; \* end_if  
 }\* process
}
\* PR label critical for nonblocking;
\* Remove up in PR label, to show the FLP result with asynchronous rounds!
*)
\* BEGIN TRANSLATION (chksum(pcal) = "16acc952" /\ chksum(tla) = "10735e48")
VARIABLES FailNum, up, pt, t, d, mb, pc

(* define statement *)
SetMin(S) == CHOOSE i \in S : \A j \in S : i =< j

VARIABLES pmb, Q

vars == << FailNum, up, pt, t, d, mb, pc, pmb, Q >>

ProcSet == (Nodes)

Init == (* Global variables *)
        /\ FailNum = FAILNUM
        /\ up = [n \in Nodes |-> TRUE]
        /\ pt = [n \in Nodes |-> 0]
        /\ t = [n \in Nodes |-> FALSE]
        /\ d = [n \in Nodes |-> -1]
        /\ mb = [n \in Nodes |-> {}]
        (* Process n *)
        /\ pmb = [self \in Nodes |-> {}]
        /\ Q = [self \in Nodes |-> {}]
        /\ pc = [self \in ProcSet |-> "P"]

P(self) == /\ pc[self] = "P"
           /\ IF up[self] /\ ~t[self]
                 THEN /\ IF d[self]=-1
                            THEN /\ d' = [d EXCEPT ![self] = self]
                            ELSE /\ TRUE
                                 /\ d' = d
                      /\ Q' = [Q EXCEPT ![self] = Nodes]
                      /\ pc' = [pc EXCEPT ![self] = "PS"]
                 ELSE /\ pc' = [pc EXCEPT ![self] = "Done"]
                      /\ UNCHANGED << d, Q >>
           /\ UNCHANGED << FailNum, up, pt, t, mb, pmb >>

PS(self) == /\ pc[self] = "PS"
            /\ IF up[self] /\ Q[self] # {}
                  THEN /\ \E p \in Q[self]:
                            /\ IF pt[p]>=pt[self] \/ ~up[p]
                                  THEN /\ mb' = [mb EXCEPT ![p] = mb[p] \union {d[self],self}]
                                       /\ Q' = [Q EXCEPT ![self] = Q[self] \ {p}]
                                  ELSE /\ TRUE
                                       /\ UNCHANGED << mb, Q >>
                            /\ IF FailNum>0 /\ up[self]
                                  THEN /\ \/ /\ up' = [up EXCEPT ![self] = FALSE]
                                             /\ FailNum' = FailNum-1
                                          \/ /\ TRUE
                                             /\ UNCHANGED <<FailNum, up>>
                                  ELSE /\ TRUE
                                       /\ UNCHANGED << FailNum, up >>
                       /\ pc' = [pc EXCEPT ![self] = "PS"]
                       /\ pt' = pt
                  ELSE /\ IF up[self]
                             THEN /\ pt' = [pt EXCEPT ![self] = pt[self]+1]
                             ELSE /\ TRUE
                                  /\ pt' = pt
                       /\ pc' = [pc EXCEPT ![self] = "PR"]
                       /\ UNCHANGED << FailNum, up, mb, Q >>
            /\ UNCHANGED << t, d, pmb >>

PR(self) == /\ pc[self] = "PR"
            /\ (up[self] /\ (\A k \in Nodes: (up[k] /\ ~t[k]) => pt[k]>=pt[self]))
            /\ d' = [d EXCEPT ![self] = SetMin(mb[self])]
            /\ IF pmb[self]=mb[self]
                  THEN /\ t' = [t EXCEPT ![self] = TRUE]
                  ELSE /\ TRUE
                       /\ t' = t
            /\ pmb' = [pmb EXCEPT ![self] = mb[self]]
            /\ mb' = [mb EXCEPT ![self] = {}]
            /\ pc' = [pc EXCEPT ![self] = "P"]
            /\ UNCHANGED << FailNum, up, pt, Q >>

n(self) == P(self) \/ PS(self) \/ PR(self)

(* Allow infinite stuttering to prevent deadlock on termination. *)
Terminating == /\ \A self \in ProcSet: pc[self] = "Done"
               /\ UNCHANGED vars

Next == (\E self \in Nodes: n(self))
           \/ Terminating

Spec == /\ Init /\ [][Next]_vars
        /\ \A self \in Nodes : WF_vars(n(self))

Termination == <>(\A self \in ProcSet: pc[self] = "Done")

\* END TRANSLATION 
Agreement == \A i,j \in Nodes: t[i] /\ t[j] => (d[i]=d[j] /\ d[i]#-1)
NoTerm == \neg \A i \in Nodes: up[i] =>t[i]
SyncTerm == \A i,j \in Nodes: t[i] /\ t[j] => pt[i]=pt[j]
Term == <> \A i \in Nodes: up[i] =>t[i]
\* Remember == [] [ (\A j \in Nodes: v'[p]>=v[p]) ]_vars
=============================================================================
\* Modification History
\* Last modified Sun Jan 03 11:18:26 CST 2021 by Administrator
\* Created Sun Jan 03 11:17:57 CST 2021 by Administrator
