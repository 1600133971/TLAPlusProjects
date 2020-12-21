--------------------------- MODULE train_sidings ---------------------------

VARIABLES t1, t2, s1, s2, s3, s4, sw1, sw2

vars == << t1, t2, s1, s2, s3, s4, sw1, sw2 >>

Init == /\ t1 = "TRACK1"    \* Position of Train 1  
        /\ t2 = "TRACK4"    \* Position of Train 2
        /\ s1 = "STOP"      \* Signal of Semaphore 1
        /\ s2 = "STOP"      \* Signal of Semaphore 2
        /\ s3 = "STOP"      \* Signal of Semaphore 3
        /\ s4 = "STOP"      \* Signal of Semaphore 4
        /\ sw1 = "STRAIGHT" \* Direction of Switch 1
        /\ sw2 = "STRAIGHT" \* Direction of Switch 2 
        
Positions == {"TRACK1", "TRACK2", "TRACK3", "TRACK4", "SWITCH1", "SWITCH2"}
Signals == {"STOP", "GO"}        
TypeInvariants == /\ t1 \in Positions
                  /\ t2 \in Positions
                  /\ s1 \in Signals
                  /\ s2 \in Signals
                  /\ s3 \in Signals
                  /\ s4 \in Signals
                  /\ sw1 \in {"STRAIGHT", "LEFT"}
                  /\ sw2 \in {"STRAIGHT", "RIGHT"}  
        
NoCollisions ==  t1 /= t2

Train1Crossed == t1 = "TRACK4"  
Train2Crossed == t2 = "TRACK1" 
CrossingSuccessful == <>Train1Crossed /\ <>Train2Crossed   

 \* Move Train 1 in a straight Line
 MoveT1 == /\ \/ /\ t1 = "TRACK1"
                 /\ t1' = "SWITCH1"
              \/ /\ t1 = "SWITCH1"
                 /\ t1' = "TRACK2"
              \/ /\ t1 = "TRACK2"
                 /\ t1' = "SWITCH2"
              \/ /\ t1 = "SWITCH2"
                 /\ t1' = "TRACK4"
           /\ UNCHANGED <<t2, s1, s2, s3, s4, sw1, sw2>>

 \* Move Train 2 via the siding 
 MoveT2 == /\ \/ /\ t2 = "TRACK4"
                 /\ s4 = "GO"
                 /\ t2' = "SWITCH2"
              \/ /\ t2 = "SWITCH2"
                 /\ t2' = IF sw2 = "STRAIGHT" THEN "TRACK2" ELSE "TRACK3"
              \/ /\ t2 = "TRACK2"
                 /\ t2' = "SWITCH1"
              \/ /\ t2 = "TRACK3"
                 /\ s3 = "GO"
                 /\ t2' = "SWITCH1"
              \/ /\ t2 = "SWITCH1"
                 /\ t2' = "TRACK1"
           /\ UNCHANGED <<t1, s1, s2, s3, s4, sw1, sw2>> 

 ChangeS1 == /\ t1 = "TRACK1"
             /\ t2 \notin {"TRACK2", "SWITCH1"}
             /\ sw1 = "STRAIGHT"
             /\ s1' = "GO"
             /\ UNCHANGED <<t1, t2, s2, s3, s4, sw1, sw2>> 

 ChangeSw1 == /\ s1 = "STOP"
              /\ s3 = "STOP"
              /\ \/ /\ sw1 = "STRAIGHT"
                    /\ sw1' = "LEFT"
                 \/ /\ sw1 = "LEFT"
                    /\ sw1' = "STRAIGHT"
              /\ UNCHANGED <<t1, t2, s1, s2, s3, s4, sw2>> 

 \* Specification        
 Next == MoveT1 \/ MoveT2
 Spec == Init /\ [][Next]_vars 
=============================================================================
\* Modification History
\* Last modified Mon Dec 21 23:07:21 CST 2020 by Administrator
\* Created Sun Dec 20 16:11:29 CST 2020 by Administrator
