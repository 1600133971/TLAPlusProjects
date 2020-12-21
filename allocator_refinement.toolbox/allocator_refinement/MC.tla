---- MODULE MC ----
EXTENDS allocator_refinement, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
c1, c2, c3
----

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
r1, r2
----

\* MV CONSTANT definitions Resources
const_160830145947256000 == 
{c1, c2, c3}
----

\* MV CONSTANT definitions Clients
const_160830145947257000 == 
{r1, r2}
----

=============================================================================
\* Modification History
\* Created Fri Dec 18 22:24:19 CST 2020 by Administrator
