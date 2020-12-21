---- MODULE MC ----
EXTENDS allocator_scheduling, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
c1, c2, c3
----

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
r1, r2
----

\* MV CONSTANT definitions Clients
const_160830104906345000 == 
{c1, c2, c3}
----

\* MV CONSTANT definitions Resources
const_160830104906446000 == 
{r1, r2}
----

=============================================================================
\* Modification History
\* Created Fri Dec 18 22:17:29 CST 2020 by Administrator
