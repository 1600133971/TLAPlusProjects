---- MODULE MC ----
EXTENDS allocator_pluscal, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
c1, c2, c3
----

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
r1, r2
----

\* MV CONSTANT definitions Clients
const_16094799540835000 == 
{c1, c2, c3}
----

\* MV CONSTANT definitions Resources
const_16094799540836000 == 
{r1, r2}
----

=============================================================================
\* Modification History
\* Created Fri Jan 01 13:45:54 CST 2021 by Administrator
