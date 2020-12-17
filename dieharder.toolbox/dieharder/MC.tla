---- MODULE MC ----
EXTENDS dieharder, TLC

\* CONSTANT definitions @modelParameterConstants:0Jug
const_160820767800941000 == 
{"j3", "j5"}
----

\* CONSTANT definitions @modelParameterConstants:1Goal
const_160820767801042000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2Capacity
const_160820767801043000 == 
[j \in Jug |-> CASE j = "j3" -> 3
                 [] j = "j5" -> 5 ]
----

=============================================================================
\* Modification History
\* Created Thu Dec 17 20:21:18 CST 2020 by Administrator
