---- MODULE MC ----
EXTENDS allocator, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
c1, c2, c3
----

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
r1, r2
----

\* MV CONSTANT definitions Clients
const_16082997202582000 == 
{c1, c2, c3}
----

\* MV CONSTANT definitions Resources
const_16082997202583000 == 
{r1, r2}
----

=============================================================================
\* Modification History
\* Created Fri Dec 18 21:55:20 CST 2020 by Administrator
