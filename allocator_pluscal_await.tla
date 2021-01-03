---------------------- MODULE allocator_pluscal_await ----------------------
EXTENDS Naturals, FiniteSets, TLC

CONSTANTS
  Clients,     \* set of all clients
  Resources    \* set of all resources

ASSUME
  /\ IsFiniteSet(Clients)
  /\ IsFiniteSet(Resources)

(*
--algorithm diehard_pluscal {
  variables unsat = [c \in Clients |-> {}], alloc = [c \in Clients |-> {}];
  define {
    available == Resources \ (UNION {alloc[c] : c \in Clients})
    
    Request(c,S) ==
      /\ unsat[c] = {} /\ alloc[c] = {}
      /\ S # {} /\ unsat' = [unsat EXCEPT ![c] = S]
      /\ UNCHANGED alloc
      
    Allocate(c,S) ==
      /\ S # {} /\ S \subseteq available \cap unsat[c]
      /\ alloc' = [alloc EXCEPT ![c] = @ \cup S]
      /\ unsat' = [unsat EXCEPT ![c] = @ \ S]
      
    Return(c,S) ==
      /\ S # {} /\ S \subseteq alloc[c]
      /\ alloc' = [alloc EXCEPT ![c] = @ \ S]
      /\ UNCHANGED unsat
  }
  {
    while (TRUE) {
      with (c \in Clients, S \in SUBSET Resources) {
        either {
          await unsat[c] = {} /\ alloc[c] = {} /\ S # {};
          unsat[c] := S;
        }
        or {
          await S # {} /\ S \subseteq available \cap unsat[c];
          alloc[c] := alloc[c] \cup S;
          unsat[c] := unsat[c] \ S;
        }
        or {
          await S # {} /\ S \subseteq alloc[c];
          alloc[c] := alloc[c] \ S;
        }
      }
    }
  }
}
*)
\* BEGIN TRANSLATION (chksum(pcal) = "da458576" /\ chksum(tla) = "eec5363f")
VARIABLES unsat, alloc

(* define statement *)
available == Resources \ (UNION {alloc[c] : c \in Clients})

Request(c,S) ==
  /\ unsat[c] = {} /\ alloc[c] = {}
  /\ S # {} /\ unsat' = [unsat EXCEPT ![c] = S]
  /\ UNCHANGED alloc

Allocate(c,S) ==
  /\ S # {} /\ S \subseteq available \cap unsat[c]
  /\ alloc' = [alloc EXCEPT ![c] = @ \cup S]
  /\ unsat' = [unsat EXCEPT ![c] = @ \ S]

Return(c,S) ==
  /\ S # {} /\ S \subseteq alloc[c]
  /\ alloc' = [alloc EXCEPT ![c] = @ \ S]
  /\ UNCHANGED unsat


vars == << unsat, alloc >>

Init == (* Global variables *)
        /\ unsat = [c \in Clients |-> {}]
        /\ alloc = [c \in Clients |-> {}]

Next == \E c \in Clients:
          \E S \in SUBSET Resources:
            \/ /\ unsat[c] = {} /\ alloc[c] = {} /\ S # {}
               /\ unsat' = [unsat EXCEPT ![c] = S]
               /\ alloc' = alloc
            \/ /\ S # {} /\ S \subseteq available \cap unsat[c]
               /\ alloc' = [alloc EXCEPT ![c] = alloc[c] \cup S]
               /\ unsat' = [unsat EXCEPT ![c] = unsat[c] \ S]
            \/ /\ S # {} /\ S \subseteq alloc[c]
               /\ alloc' = [alloc EXCEPT ![c] = alloc[c] \ S]
               /\ unsat' = unsat

Spec == Init /\ [][Next]_vars

\* END TRANSLATION 

TypeInvariant ==
  /\ unsat \in [Clients -> SUBSET Resources]
  /\ alloc \in [Clients -> SUBSET Resources]

SimpleAllocator == 
  /\ Spec
  /\ \A c \in Clients: WF_vars(Return(c, alloc[c]))
  /\ \A c \in Clients: SF_vars(\E S \in SUBSET Resources: Allocate(c,S))

ResourceMutex ==
  \A c1,c2 \in Clients : c1 # c2 => alloc[c1] \cap alloc[c2] = {}

ClientsWillReturn ==
  \A c \in Clients : unsat[c]={} ~> alloc[c]={}

ClientsWillObtain ==
  \A c \in Clients, r \in Resources : r \in unsat[c] ~> r \in alloc[c]

InfOftenSatisfied == 
  \A c \in Clients : []<>(unsat[c] = {})


=============================================================================
\* Modification History
\* Last modified Fri Jan 01 13:58:27 CST 2021 by Administrator
\* Created Fri Jan 01 13:47:45 CST 2021 by Administrator
