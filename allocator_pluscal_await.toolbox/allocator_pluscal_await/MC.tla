---- MODULE MC ----
EXTENDS allocator_pluscal_await, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
c1, c2, c3
----

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
r1, r2
----

\* MV CONSTANT definitions Clients
const_160948087051919000 == 
{c1, c2, c3}
----

\* MV CONSTANT definitions Resources
const_160948087051920000 == 
{r1, r2}
----

=============================================================================
\* Modification History
\* Created Fri Jan 01 14:01:10 CST 2021 by Administrator
