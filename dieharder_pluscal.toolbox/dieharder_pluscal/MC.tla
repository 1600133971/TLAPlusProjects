---- MODULE MC ----
EXTENDS dieharder_pluscal, TLC

\* CONSTANT definitions @modelParameterConstants:0Jug
const_160821592352657000 == 
{"j3", "j5"}
----

\* CONSTANT definitions @modelParameterConstants:1Goal
const_160821592352658000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:2Capacity
const_160821592352659000 == 
[j \in Jug |-> CASE j = "j3" -> 3
                 [] j = "j5" -> 5 ]
----

=============================================================================
\* Modification History
\* Created Thu Dec 17 22:38:43 CST 2020 by Administrator
