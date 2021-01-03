------------------------- MODULE allocator_pluscal -------------------------
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
        if (unsat[c] = {} /\ alloc[c] = {} /\ S # {}) {
          unsat[c] := S;
        }
        else if (S # {} /\ S \subseteq available \cap unsat[c]) {
          alloc[c] := alloc[c] \cup S;
          unsat[c] := unsat[c] \ S;
        }
        else if (S # {} /\ S \subseteq alloc[c]) {
          alloc[c] := alloc[c] \ S;
        }
      }
    }
  }
}
*)
\* BEGIN TRANSLATION (chksum(pcal) = "d49d6df4" /\ chksum(tla) = "cc1c2e4")
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
            IF unsat[c] = {} /\ alloc[c] = {} /\ S # {}
               THEN /\ unsat' = [unsat EXCEPT ![c] = S]
                    /\ alloc' = alloc
               ELSE /\ IF S # {} /\ S \subseteq available \cap unsat[c]
                          THEN /\ alloc' = [alloc EXCEPT ![c] = alloc[c] \cup S]
                               /\ unsat' = [unsat EXCEPT ![c] = unsat[c] \ S]
                          ELSE /\ IF S # {} /\ S \subseteq alloc[c]
                                     THEN /\ alloc' = [alloc EXCEPT ![c] = alloc[c] \ S]
                                     ELSE /\ TRUE
                                          /\ alloc' = alloc
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
\* Last modified Fri Dec 18 22:09:13 CST 2020 by Administrator
\* Created Thu Dec 17 23:31:37 CST 2020 by Administrator
