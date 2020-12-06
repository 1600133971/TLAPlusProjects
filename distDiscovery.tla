--------------------------- MODULE distDiscovery ---------------------------
EXTENDS Integers, FiniteSets, Sequences, TLC
CONSTANTS ServerCount
range(aFunc) == {aFunc[x]: x \in DOMAIN aFunc}
ASSUME ServerCount \in Nat
(*--algorithm DistDiscovery
\* This is a toy algorithm describing a system of computers, in a linear network configuration, trying to 
\* discover how many other computers are in the system 

variables messages = [x \in servers |-> [lm |-> {}, rm |-> {}]];
define
    servers == 1..ServerCount
end define;

macro sendLeft(left)
begin
    if left /= {} then
        with s \in left do
            messages[s].rm := known;
        end with;
    end if;
end macro;

macro sendRight(right)
begin
    if right /= {} then
         with r \in right do
            messages[r].lm := known;
         end with;
    end if;
end macro;

fair+ process server \in servers 
    variables left = IF self > 1 THEN {self-1} ELSE {}, 
        right = IF self < ServerCount THEN {self+1} ELSE {},
        known = {self};
   
begin
    start_search:
\*        while known = {} \/ known /= messages[self].rm \union messages[self].lm \/ messages[self].rm /= messages[self].lm do
          while TRUE do
            either 
                 message_left_first:
                    sendLeft(left);
                 message_right_second:
                    sendRight(right);
            or
                message_right_first:
                    sendRight(right);
                message_left_second:
                    sendLeft(left);
            end either;
            process_seen:
\*                await messages[self].lm /= {} \/ messages[self].rm /= {};
                known := known \union messages[self].lm \union messages[self].rm;
      end while;
end process;

end algorithm;*)
\* BEGIN TRANSLATION
VARIABLES messages, pc

(* define statement *)
servers == 1..ServerCount

VARIABLES left, right, known

vars == << messages, pc, left, right, known >>

ProcSet == (servers)

Init == (* Global variables *)
        /\ messages = [x \in servers |-> [lm |-> {}, rm |-> {}]]
        (* Process server *)
        /\ left = [self \in servers |-> IF self > 1 THEN {self-1} ELSE {}]
        /\ right = [self \in servers |-> IF self < ServerCount THEN {self+1} ELSE {}]
        /\ known = [self \in servers |-> {self}]
        /\ pc = [self \in ProcSet |-> "start_search"]

start_search(self) == /\ pc[self] = "start_search"
                      /\ \/ /\ pc' = [pc EXCEPT ![self] = "message_left_first"]
                         \/ /\ pc' = [pc EXCEPT ![self] = "message_right_first"]
                      /\ UNCHANGED << messages, left, right, known >>

process_seen(self) == /\ pc[self] = "process_seen"
                      /\ known' = [known EXCEPT ![self] = known[self] \union messages[self].lm \union messages[self].rm]
                      /\ pc' = [pc EXCEPT ![self] = "start_search"]
                      /\ UNCHANGED << messages, left, right >>

message_left_first(self) == /\ pc[self] = "message_left_first"
                            /\ IF left[self] /= {}
                                  THEN /\ \E s \in left[self]:
                                            messages' = [messages EXCEPT ![s].rm = known[self]]
                                  ELSE /\ TRUE
                                       /\ UNCHANGED messages
                            /\ pc' = [pc EXCEPT ![self] = "message_right_second"]
                            /\ UNCHANGED << left, right, known >>

message_right_second(self) == /\ pc[self] = "message_right_second"
                              /\ IF right[self] /= {}
                                    THEN /\ \E r \in right[self]:
                                              messages' = [messages EXCEPT ![r].lm = known[self]]
                                    ELSE /\ TRUE
                                         /\ UNCHANGED messages
                              /\ pc' = [pc EXCEPT ![self] = "process_seen"]
                              /\ UNCHANGED << left, right, known >>

message_right_first(self) == /\ pc[self] = "message_right_first"
                             /\ IF right[self] /= {}
                                   THEN /\ \E r \in right[self]:
                                             messages' = [messages EXCEPT ![r].lm = known[self]]
                                   ELSE /\ TRUE
                                        /\ UNCHANGED messages
                             /\ pc' = [pc EXCEPT ![self] = "message_left_second"]
                             /\ UNCHANGED << left, right, known >>

message_left_second(self) == /\ pc[self] = "message_left_second"
                             /\ IF left[self] /= {}
                                   THEN /\ \E s \in left[self]:
                                             messages' = [messages EXCEPT ![s].rm = known[self]]
                                   ELSE /\ TRUE
                                        /\ UNCHANGED messages
                             /\ pc' = [pc EXCEPT ![self] = "process_seen"]
                             /\ UNCHANGED << left, right, known >>

server(self) == start_search(self) \/ process_seen(self)
                   \/ message_left_first(self)
                   \/ message_right_second(self)
                   \/ message_right_first(self)
                   \/ message_left_second(self)

Next == (\E self \in servers: server(self))

Spec == /\ Init /\ [][Next]_vars
        /\ \A self \in servers : SF_vars(server(self))

\* END TRANSLATION
allGood == <>[](\A x \in range(known): Cardinality(x) = ServerCount)

=============================================================================
\* Modification History
\* Last modified Fri Aug 07 07:37:40 PDT 2020 by aaron
\* Created Tue Aug 04 15:46:45 PDT 2020 by aaron
