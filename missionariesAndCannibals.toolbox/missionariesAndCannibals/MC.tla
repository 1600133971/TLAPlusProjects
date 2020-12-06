---- MODULE MC ----
EXTENDS missionariesAndCannibals, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
c1, c2, c3
----

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
m1, m2, m3
----

\* MV CONSTANT definitions Cannibals
const_16072441440896000 == 
{c1, c2, c3}
----

\* MV CONSTANT definitions Missionaries
const_16072441440897000 == 
{m1, m2, m3}
----

\* INVARIANT definition @modelCorrectnessInvariants:0
inv_16072441440898000 ==
who_is_on_bank["E"] /={}
----
=============================================================================
\* Modification History
\* Created Sun Dec 06 16:42:24 CST 2020 by Administrator
