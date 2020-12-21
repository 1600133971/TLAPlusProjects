---- MODULE MC ----
EXTENDS allocator_implementation, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
c1, c2, c3
----

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
r1, r2
----

\* MV CONSTANT definitions Resources
const_160830182655665000 == 
{c1, c2, c3}
----

\* MV CONSTANT definitions Clients
const_160830182655666000 == 
{r1, r2}
----

=============================================================================
\* Modification History
\* Created Fri Dec 18 22:30:26 CST 2020 by Administrator
