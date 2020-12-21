------------------------ MODULE restaurant_managers ------------------------
EXTENDS Naturals, TLC

(*
--algorithm restaurant_managers {
  variables
    managers = { "bob", "chuck", "dave" };
    restaurant_stage = [ i \in managers |-> "start" ];   

  macro SetAll(state, k) {
    while (k # {}) {
      with (p \in k) {
        restaurant_stage[p] := state;
        k := k \ {p};
      };
    };
  }
  
  process (Restaurant \in managers) {
    c: await restaurant_stage[self] = "propose";

    either {
      restaurant_stage[self] := "accept";
    } or {
      restaurant_stage[self] := "refuse";
    };

    c1: await (restaurant_stage[self] = "commit") 
           \/ (restaurant_stage[self] = "abort");

    if (restaurant_stage[self] = "commit") {
      restaurant_stage[self] := "committed";
    } else {
      restaurant_stage[self] := "aborted";
    }
  };

  process (Controller = "alice") 
  variable k = {}, aborted = FALSE;
  {
    n: k := managers;        
    n2: SetAll("propose", k);
      
    k := managers;
    n3: while (k # {}) {
          with (p \in k) {
            await (restaurant_stage[p] = "accept") 
               \/ (restaurant_stage[p] = "refuse");
            if (restaurant_stage[p] = "refuse") {
              aborted := TRUE;
            };
            k := k \ {p};
          };
        };
      
    k := managers;
    if (aborted = TRUE) {
      n6: SetAll("abort", k);
    } else {
      n4: SetAll("commit", k);
    }
  };
}
*)
\* BEGIN TRANSLATION (chksum(pcal) = "de8de6b7" /\ chksum(tla) = "c2ab5aca")
VARIABLES managers, restaurant_stage, pc, k, aborted

vars == << managers, restaurant_stage, pc, k, aborted >>

ProcSet == (managers) \cup {"alice"}

Init == (* Global variables *)
        /\ managers = { "bob", "chuck", "dave" }
        /\ restaurant_stage = [ i \in managers |-> "start" ]
        (* Process Controller *)
        /\ k = {}
        /\ aborted = FALSE
        /\ pc = [self \in ProcSet |-> CASE self \in managers -> "c"
                                        [] self = "alice" -> "n"]

c(self) == /\ pc[self] = "c"
           /\ restaurant_stage[self] = "propose"
           /\ \/ /\ restaurant_stage' = [restaurant_stage EXCEPT ![self] = "accept"]
              \/ /\ restaurant_stage' = [restaurant_stage EXCEPT ![self] = "refuse"]
           /\ pc' = [pc EXCEPT ![self] = "c1"]
           /\ UNCHANGED << managers, k, aborted >>

c1(self) == /\ pc[self] = "c1"
            /\    (restaurant_stage[self] = "commit")
               \/ (restaurant_stage[self] = "abort")
            /\ IF restaurant_stage[self] = "commit"
                  THEN /\ restaurant_stage' = [restaurant_stage EXCEPT ![self] = "committed"]
                  ELSE /\ restaurant_stage' = [restaurant_stage EXCEPT ![self] = "aborted"]
            /\ pc' = [pc EXCEPT ![self] = "Done"]
            /\ UNCHANGED << managers, k, aborted >>

Restaurant(self) == c(self) \/ c1(self)

n == /\ pc["alice"] = "n"
     /\ k' = managers
     /\ pc' = [pc EXCEPT !["alice"] = "n2"]
     /\ UNCHANGED << managers, restaurant_stage, aborted >>

n2 == /\ pc["alice"] = "n2"
      /\ IF k # {}
            THEN /\ \E p \in k:
                      /\ restaurant_stage' = [restaurant_stage EXCEPT ![p] = "propose"]
                      /\ k' = k \ {p}
                 /\ pc' = [pc EXCEPT !["alice"] = "n2"]
            ELSE /\ k' = managers
                 /\ pc' = [pc EXCEPT !["alice"] = "n3"]
                 /\ UNCHANGED restaurant_stage
      /\ UNCHANGED << managers, aborted >>

n3 == /\ pc["alice"] = "n3"
      /\ IF k # {}
            THEN /\ \E p \in k:
                      /\    (restaurant_stage[p] = "accept")
                         \/ (restaurant_stage[p] = "refuse")
                      /\ IF restaurant_stage[p] = "refuse"
                            THEN /\ aborted' = TRUE
                            ELSE /\ TRUE
                                 /\ UNCHANGED aborted
                      /\ k' = k \ {p}
                 /\ pc' = [pc EXCEPT !["alice"] = "n3"]
            ELSE /\ k' = managers
                 /\ IF aborted = TRUE
                       THEN /\ pc' = [pc EXCEPT !["alice"] = "n6"]
                       ELSE /\ pc' = [pc EXCEPT !["alice"] = "n4"]
                 /\ UNCHANGED aborted
      /\ UNCHANGED << managers, restaurant_stage >>

n6 == /\ pc["alice"] = "n6"
      /\ IF k # {}
            THEN /\ \E p \in k:
                      /\ restaurant_stage' = [restaurant_stage EXCEPT ![p] = "abort"]
                      /\ k' = k \ {p}
                 /\ pc' = [pc EXCEPT !["alice"] = "n6"]
            ELSE /\ pc' = [pc EXCEPT !["alice"] = "Done"]
                 /\ UNCHANGED << restaurant_stage, k >>
      /\ UNCHANGED << managers, aborted >>

n4 == /\ pc["alice"] = "n4"
      /\ IF k # {}
            THEN /\ \E p \in k:
                      /\ restaurant_stage' = [restaurant_stage EXCEPT ![p] = "commit"]
                      /\ k' = k \ {p}
                 /\ pc' = [pc EXCEPT !["alice"] = "n4"]
            ELSE /\ pc' = [pc EXCEPT !["alice"] = "Done"]
                 /\ UNCHANGED << restaurant_stage, k >>
      /\ UNCHANGED << managers, aborted >>

Controller == n \/ n2 \/ n3 \/ n6 \/ n4

(* Allow infinite stuttering to prevent deadlock on termination. *)
Terminating == /\ \A self \in ProcSet: pc[self] = "Done"
               /\ UNCHANGED vars

Next == Controller
           \/ (\E self \in managers: Restaurant(self))
           \/ Terminating

Spec == Init /\ [][Next]_vars

Termination == <>(\A self \in ProcSet: pc[self] = "Done")

\* END TRANSLATION 
StateOK == /\ (\A i \in managers: restaurant_stage[i] \in {"start", "propose",
            "accept", "commit", "abort", "committed", "aborted", "refuse"})

Committed == /\ \/ <>(\A i \in managers: restaurant_stage[i] = "committed")
                \/ <>(\A i \in managers: restaurant_stage[i] = "aborted")

=============================================================================
\* Modification History
\* Last modified Sun Dec 20 15:38:35 CST 2020 by Administrator
\* Created Sun Dec 20 15:10:01 CST 2020 by Administrator
