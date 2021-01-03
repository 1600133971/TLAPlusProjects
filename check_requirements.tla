------------------------- MODULE check_requirements -------------------------
VARIABLES inputs1, output1
VARIABLES inputs2, output2

vars1 == <<inputs1, output1>>
vars2 == <<inputs2, output2>>

Requirements1 == INSTANCE requirements
           WITH inputs <- inputs1,
                output <- output1
                
Requirements2 == INSTANCE requirements
           WITH inputs <- inputs2,
                output <- output2
                
Init == Requirements1!Init /\ Requirements2!Init
Next == Requirements1!Next /\ Requirements2!Next
      
RequirementsNotConflicting == inputs1 = inputs2 => output1 = output2
EndsInSteadyState == <>[][output1 = output2]_<<output1, output2>>

=============================================================================
\* Modification History
\* Last modified Sat Jan 02 13:57:12 CST 2021 by Administrator
\* Created Sat Jan 02 13:56:43 CST 2021 by Administrator
