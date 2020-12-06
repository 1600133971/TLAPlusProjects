---- MODULE MC ----
EXTENDS hanoi2, TLC

\* CONSTANT definitions @modelParameterConstants:0Initial
const_160715638645196000 == 
"a"
----

\* CONSTANT definitions @modelParameterConstants:1Sticks
const_160715638645197000 == 
{"a", "b", "c"}
----

\* CONSTANT definitions @modelParameterConstants:2Target
const_160715638645198000 == 
"c"
----

\* CONSTANT definitions @modelParameterConstants:3Disks
const_160715638645199000 == 
<<1,2,3>>
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1607156386451100000 ==
~Done
----
=============================================================================
\* Modification History
\* Created Sat Dec 05 16:19:46 CST 2020 by Administrator
