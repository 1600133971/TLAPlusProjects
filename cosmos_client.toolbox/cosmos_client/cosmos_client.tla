# TLA+ for the general model with multiple clients across different Azure regions

We present the [TLA+](https://lamport.azurewebsites.net/tla/tla.html)/[PlusCal](https://lamport.azurewebsites.net/tla/pluscal.html) specifications of our general model, where multiple clients across different regions put Cosmos DB to the test with respect to the consistency guarantees it provides in the presence of concurrent reads and writes.

In this general model, as with the actual Cosmos DB service, the database is modeled to be associated with a set of Azure regions. The clients perform their writes and reads to their respective local regions. The writes are appended to the _Database[r]_ of the corresponding (destination) region `r`. The Cosmos DB protocol calls the replicate macro to perform anti-entropy across the regions. The macro selects two regions and merges their `Database` in a fashion that respects the _happened-before_ relationship.

![](1.png)

In this case, the happened-before relationship is defined via the use of "<" on the `value` that serves as a shared backchannel among the clients in order to drive and check the database for linearizability and other guarantees provided. An easy realization of `value` is to use the wall-clock as the shared backchannel among the clients.

![](2.png)

The read operations (alongside with write operations) are recorded in `History` variable in order to capture a trace of global client operation history. The `History` trace is then used for checking for the five consistency levels, which are depicted at the end of the specification file.

![](3.png)

When we run the model checker, for example with the `Consistency` parameter set to bounded staleness, we can verify that the database provides monotonic read, read your write, as well as the `K`-staleness guarantee with respect to the latest write in any of the regions.

![](4.png)

## Sources

- [cosmos_client.pdf](./cosmos_client.pdf)
- [cosmos_client.tla](./cosmos_client.tla)
--------------------------- MODULE cosmos_client ---------------------------
(***************************************************************************)
(* Microsoft Azure Cosmos DB TLA+ speciﬁcation for the five consistency    *)
(* levels the service offers. The spec focuses on the consistency          *)
(* guarantees Cosmos DB provides to the clients, without the details of    *)
(* the protocol implementation.                                            *)
(***************************************************************************)

EXTENDS Naturals, Integers, Reals, Sequences, FiniteSets, TLC

(***************************************************************************)
(* Number of regions                                                       *)
(***************************************************************************)
CONSTANT NumRegions
CONSTANT NumWriteRegions

ASSUME NumRegions \in Nat
ASSUME NumWriteRegions >= 1 /\ NumWriteRegions <= NumRegions

(***************************************************************************)
(* Number of clients per region for modeling                               *)
(***************************************************************************)
CONSTANT NumClientsPerRegion

ASSUME NumClientsPerRegion \in Nat

(***************************************************************************)
(* MaxNumOp max number of operations from client                           *)
(***************************************************************************)
CONSTANT MaxNumOp

(***************************************************************************)
(* Consistency level                                                       *)
(* (1) strong (Linearizability)                                            *)
(* (2) bounded (Bounded Staleness)                                         *)
(* (3) session                                                             *)
(* (4) prefix (Consistent Prefix)                                          *)
(* (5) eventual                                                            *)
(***************************************************************************)
CONSTANT Consistency

ASSUME Consistency \in {"strong", "bounded_staleness", "session", "consistent_prefix", "eventual"}

(* The bounded version differences in Bounded Staleness consistency *)
CONSTANT K

ASSUME K \in Nat

(* All regions in topology *)
Regions == 1..NumRegions
(* All writable regions in topology *)
WriteRegions == 1..NumWriteRegions
(* All clients with local region *)
Clients == {<<r, j>> : r \in Regions, j \in 1..NumClientsPerRegion}

(***************************************************************************)
(* All possible operations in history                                      *)
(***************************************************************************)
Operations == [type: {"write"}, data: Nat, region: WriteRegions, client: Clients]
       \union [type: {"read"}, data: Nat, region: Regions, client: Clients]

(*
--algorithm cosmos_client
{

    variables (* Max staleness. Strong is a special case of bounded with K = 1 *)
              Bound = CASE Consistency = "strong" -> 1
                        [] Consistency = "bounded_staleness" -> K
                        [] Consistency = "session" -> MaxNumOp
                        [] Consistency = "consistent_prefix" -> MaxNumOp
                        [] Consistency = "eventual" -> MaxNumOp;
                        
              (* Client operation history *)
              History = <<>>;
              
              (* Latest data value in each region *)
              Data = [r \in Regions |-> 0];
              
              (* Tentative log in each region *)
              Database = [r \in Regions |-> <<>>];
              
              (* Value used by clients *)
              value = 0;
              
    define
    {
        \* Removing duplicates from a sequence:
        RECURSIVE RemDupRec(_,_)
        RemDupRec(es, seen) == IF es = <<>> THEN <<>>
                               ELSE IF es[1] \in seen THEN RemDupRec(Tail(es), seen)
                               ELSE <<es[1]>> \o RemDupRec(Tail(es), seen \cup {es[1]})
                                         
        RemoveDuplicates(es) == RemDupRec(es, {})
        
        SetMax(S) == IF S = {} THEN -1
                     ELSE CHOOSE i \in S : \A j \in S : i >= j
                     
        SeqToSet(s) == {s[i] : i \in DOMAIN s}
                     
        Last(s) == s[Len(s)]

        MaxLen(c) == LET region == CHOOSE i \in Regions : \A j \in Regions : Len(c[i]) >= Len(c[j])
                     IN Len(c[region])
        
        MinLen(c) == LET region == CHOOSE i \in Regions : \A j \in Regions : Len(c[i]) <= Len(c[j])
                     IN Len(c[region])
    }
    
    (* -------------------------------------------------------------- *)
    (* --------------------- CLIENT ACTIONS ------------------------- *)
    (* -------------------------------------------------------------- *)
    
    (* Regular write at local region *)
    macro write(v)
    {
        if (self[1] \in WriteRegions)
        {
            when \A i, j \in Regions : Data[i] - Data[j] < Bound;
            Database[self[1]] := Append(@, v);
            Data[self[1]] := v;
            History := Append(History, [type |-> "write",
                                        data |-> v,
                                      region |-> self[1],
                                      client |-> self]);
            session_token := v;
        }
    }
    
    (* Reads with consistency checks *)
    macro read()
    {
        (* We check session token for session consistency *)
        when Consistency /= "session" \/ Data[self[1]] >= session_token;
        (* We check global value for strong consistency *)
        when Consistency /= "strong" \/ \A i, j \in Regions : Data[i] = Data[j];
        History := Append(History, [type |-> "read",
                                    data |-> Data[self[1]],
                                  region |-> self[1],
                                  client |-> self]);
        session_token := Data[self[1]];
    }
    
    (* -------------------------------------------------------------- *)
    (* --------------------- REGION ACTIONS ------------------------- *)
    (* -------------------------------------------------------------- *)
    
    (* Asynchronously replicates from source region to destination region and merges data history *)
    macro replicate()
    {
        with (s \in WriteRegions; d \in Regions)
        {
            Database[d] := RemoveDuplicates(SortSeq(Database[d] \o Database[s], <));
            if (Len(Database[d]) > 0)
            {
                Data[d] := Last(Database[d]);
            }
        }
    }
    
    (* -------------------------------------------------------------- *)
    (* -------------------- CLIENT PROCESSES ------------------------ *)
    (* -------------------------------------------------------------- *)
    fair process (client \in Clients)
    variable session_token = 0;
    numOp = 0;
    {
        client_actions:
        while(numOp < MaxNumOp)
        {
            numOp := numOp + 1;
            either
            {
                write:
                value := value + 1;
                write(value);
            }
            or read: read();
        }
    }
    
    (* -------------------------------------------------------------- *)
    (* -------------------- SERVER PROCESSES ------------------------ *)
    (* -------------------------------------------------------------- *)
    fair process (CosmosDB = <<0, 0>>)
    {
        database_action:
        while(TRUE)
        {
            replicate();
        }
    }
    
}
*)
\* BEGIN TRANSLATION (chksum(pcal) = "932851e5" /\ chksum(tla) = "9aee2d13")
VARIABLES Bound, History, Data, Database, value, pc

(* define statement *)
RECURSIVE RemDupRec(_,_)
RemDupRec(es, seen) == IF es = <<>> THEN <<>>
                       ELSE IF es[1] \in seen THEN RemDupRec(Tail(es), seen)
                       ELSE <<es[1]>> \o RemDupRec(Tail(es), seen \cup {es[1]})

RemoveDuplicates(es) == RemDupRec(es, {})

SetMax(S) == IF S = {} THEN -1
             ELSE CHOOSE i \in S : \A j \in S : i >= j

SeqToSet(s) == {s[i] : i \in DOMAIN s}

Last(s) == s[Len(s)]

MaxLen(c) == LET region == CHOOSE i \in Regions : \A j \in Regions : Len(c[i]) >= Len(c[j])
             IN Len(c[region])

MinLen(c) == LET region == CHOOSE i \in Regions : \A j \in Regions : Len(c[i]) <= Len(c[j])
             IN Len(c[region])

VARIABLES session_token, numOp

vars == << Bound, History, Data, Database, value, pc, session_token, numOp >>

ProcSet == (Clients) \cup {<<0, 0>>}

Init == (* Global variables *)
        /\ Bound = (CASE Consistency = "strong" -> 1
                      [] Consistency = "bounded_staleness" -> K
                      [] Consistency = "session" -> MaxNumOp
                      [] Consistency = "consistent_prefix" -> MaxNumOp
                      [] Consistency = "eventual" -> MaxNumOp)
        /\ History = <<>>
        /\ Data = [r \in Regions |-> 0]
        /\ Database = [r \in Regions |-> <<>>]
        /\ value = 0
        (* Process client *)
        /\ session_token = [self \in Clients |-> 0]
        /\ numOp = [self \in Clients |-> 0]
        /\ pc = [self \in ProcSet |-> CASE self \in Clients -> "client_actions"
                                        [] self = <<0, 0>> -> "database_action"]

client_actions(self) == /\ pc[self] = "client_actions"
                        /\ IF numOp[self] < MaxNumOp
                              THEN /\ numOp' = [numOp EXCEPT ![self] = numOp[self] + 1]
                                   /\ \/ /\ pc' = [pc EXCEPT ![self] = "write"]
                                      \/ /\ pc' = [pc EXCEPT ![self] = "read"]
                              ELSE /\ pc' = [pc EXCEPT ![self] = "Done"]
                                   /\ numOp' = numOp
                        /\ UNCHANGED << Bound, History, Data, Database, value, 
                                        session_token >>

write(self) == /\ pc[self] = "write"
               /\ value' = value + 1
               /\ IF self[1] \in WriteRegions
                     THEN /\ \A i, j \in Regions : Data[i] - Data[j] < Bound
                          /\ Database' = [Database EXCEPT ![self[1]] = Append(@, value')]
                          /\ Data' = [Data EXCEPT ![self[1]] = value']
                          /\ History' = Append(History, [type |-> "write",
                                                         data |-> value',
                                                       region |-> self[1],
                                                       client |-> self])
                          /\ session_token' = [session_token EXCEPT ![self] = value']
                     ELSE /\ TRUE
                          /\ UNCHANGED << History, Data, Database, 
                                          session_token >>
               /\ pc' = [pc EXCEPT ![self] = "client_actions"]
               /\ UNCHANGED << Bound, numOp >>

read(self) == /\ pc[self] = "read"
              /\ Consistency /= "session" \/ Data[self[1]] >= session_token[self]
              /\ Consistency /= "strong" \/ \A i, j \in Regions : Data[i] = Data[j]
              /\ History' = Append(History, [type |-> "read",
                                             data |-> Data[self[1]],
                                           region |-> self[1],
                                           client |-> self])
              /\ session_token' = [session_token EXCEPT ![self] = Data[self[1]]]
              /\ pc' = [pc EXCEPT ![self] = "client_actions"]
              /\ UNCHANGED << Bound, Data, Database, value, numOp >>

client(self) == client_actions(self) \/ write(self) \/ read(self)

database_action == /\ pc[<<0, 0>>] = "database_action"
                   /\ \E s \in WriteRegions:
                        \E d \in Regions:
                          /\ Database' = [Database EXCEPT ![d] = RemoveDuplicates(SortSeq(Database[d] \o Database[s], <))]
                          /\ IF Len(Database'[d]) > 0
                                THEN /\ Data' = [Data EXCEPT ![d] = Last(Database'[d])]
                                ELSE /\ TRUE
                                     /\ Data' = Data
                   /\ pc' = [pc EXCEPT ![<<0, 0>>] = "database_action"]
                   /\ UNCHANGED << Bound, History, value, session_token, numOp >>

CosmosDB == database_action

Next == CosmosDB
           \/ (\E self \in Clients: client(self))

Spec == /\ Init /\ [][Next]_vars
        /\ \A self \in Clients : WF_vars(client(self))
        /\ WF_vars(CosmosDB)

\* END TRANSLATION 
-----------------------------------------------------------------------------

(* enable these invariants in model checker *)

(* Check elements in History are type of Opertion *)
TypeOK == {History[i] : i \in DOMAIN History} \subseteq Operations

(* Read value in any regional database history *)                       
AnyReadPerRegion(r) == \A i \in DOMAIN History : /\ History[i].type = "read"
                                                 /\ History[i].region = r
                                                 => History[i].data \in SeqToSet(Database[r]) \union {0}

(* Operation in history h is monitonic *)
Monotonic(h) == \A i, j \in DOMAIN h : i <= j => h[i].data <= h[j].data

(* Reads in region r are monotonic *)
MonotonicReadPerRegion(r) == LET reads == [i \in {j \in DOMAIN History : /\ History[j].type = "read" 
                                                                         /\ History[j].region = r}
                                          |-> History[i]]
                              IN Monotonic(reads)

(* Reads from client c are monotonic *)
MonotonicReadPerClient(c) == LET reads == [i \in {j \in DOMAIN History : /\ History[j].type = "read" 
                                                                         /\ History[j].client = c} 
                                          |-> History[i]]
                              IN Monotonic(reads)
                             
MonotonicWritePerRegion(r) == LET writes == [i \in {j \in DOMAIN History : /\ History[j].type = "write" 
                                                                           /\ History[j].region = r} 
                                            |-> History[i]]
                               IN Monotonic(writes)

(* Clients read their own writes *)
ReadYourWrite == \A i, j \in DOMAIN History : /\ i < j
                                              /\ History[i].type = "write"
                                              /\ History[j].type = "read"
                                              /\ History[i].client = History[j].client
                                              => History[j].data >= History[i].data
                                              
(* Read the latest writes *)
ReadAfterWrite == \A i, j \in DOMAIN History : /\ i < j
                                               /\ History[i].type = "write"
                                               /\ History[j].type = "read"
                                               => History[j].data >= History[i].data
                                               
Linearizability == \A i, j \in DOMAIN History : /\ i < j
                                                => History[j].data >= History[i].data
                                               
LastOperation(c) == LET i == SetMax({j \in DOMAIN History : History[j].client = c})
                    IN IF i > 0 THEN History[i] ELSE <<>>


BoundedStaleness == /\ \A i, j \in Regions : Data[i] - Data[j] <= K
                    /\ \A r \in Regions : MonotonicReadPerRegion(r)
                    /\ ReadYourWrite

ConsistentPrefix == \A r \in Regions : /\ MonotonicWritePerRegion(r)
                                       /\ AnyReadPerRegion(r)

Strong == /\ Linearizability
          /\ Monotonic(History)
          /\ ReadAfterWrite

Session == /\ \A c \in Clients : MonotonicReadPerClient(c)
           /\ ReadYourWrite

Eventual == \A i \in DOMAIN History : 
            LET r == History[i].region
            IN History[i].data \in {Database[r][j] : j \in DOMAIN Database[r]} \union {0}

Invariant == /\ TypeOK
             /\ CASE Consistency = "strong" -> Strong
                  [] Consistency = "bounded_staleness" -> BoundedStaleness
                  [] Consistency = "session" -> Session
                  [] Consistency = "consistent_prefix" -> ConsistentPrefix
                  [] Consistency = "eventual" -> Eventual

Liveness == <>[] (\A i, j \in Regions : Database[i] = Database[j])
=============================================================================
\* Modification History
\* Last modified Sun Jan 03 16:19:36 CST 2021 by Administrator
\* Created Sun Jan 03 16:17:23 CST 2021 by Administrator
