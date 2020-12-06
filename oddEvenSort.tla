---------------------------- MODULE oddEvenSort ----------------------------
EXTENDS Integers, FiniteSets, Sequences, TLC
CONSTANTS ServerCount, ChosenOrdering, UseChosen
range(aFunc) == {aFunc[x]: x \in DOMAIN aFunc}
ASSUME UseChosen \in BOOLEAN
ASSUME ServerCount \in Nat
ASSUME ChosenOrdering \in [1..ServerCount -> 1..ServerCount]
(*--algorithm oddEventSort
\* https://disco.ethz.ch/courses/podc_allstars/lecture/chapter4.pdf
\* https://www.youtube.com/watch?v=QTrXieZbCQc
\* This is a toy algorithm describing a system of computers, in a linear network configuration, trying to 
\* sort values in the distributed network

variables messages = [x \in servers |-> [lm |-> <<>>, rm |-> <<>>]], ordering \in IF UseChosen THEN {ChosenOrdering} ELSE [1..ServerCount -> 1..ServerCount];
define
    servers == 1..ServerCount
    max(a,b) == IF a > b THEN a ELSE b
    min(a,b) == IF a <= b THEN a ELSE b
    isEven(self) == self % 2 = 0
    isOdd(self) == self % 2 = 1 
end define;

macro sendRight(right, val)
begin
    messages[right].lm := Append(messages[right].lm, val);
end macro;

macro sendLeft(left, val)
begin
    messages[left].rm := Append(messages[left].rm, val);
end macro;


fair+ process server \in servers 
    variables left = IF self > 1 THEN self-1 ELSE 0, 
        right = IF self < ServerCount THEN self+1 ELSE 0,
        val = ordering[self];
   
begin
    start_search:
          while TRUE do
            oddPhase:
            if isOdd(self) /\ right /= 0 then            
\*                print messages[right].lm;
                sendRight(right, val);              
            elsif isEven(self) then
                sendLeft(left, val);
\*            else
\*                print <<1, self, left, right>>
            end if;
            swapOdd:
                if isOdd(self) /\ right /= 0 then
                    await messages[self].rm /= <<>>;
                    val := min(val, Head(messages[self].rm));
                    messages[self].rm := Tail(messages[self].rm);
                elsif isEven(self) /\ left /= 0 then
                    await messages[self].lm /= <<>>;
                    val := max(val, Head(messages[self].lm));
                    messages[self].lm := Tail(messages[self].lm);
\*                else
\*                    print <<2, self, left, right>>
                end if;
            evenPhase:
            if isOdd(self) /\ left /= 0 then
                sendLeft(left, val);
            elsif isEven(self) /\ right /= 0 then
                sendRight(right, val);
            end if;
            swapEven:
                if isOdd(self) /\ left /= 0 then
                    await messages[self].lm /= <<>>;
                    val := max(val, Head(messages[self].lm));
                    messages[self].lm := Tail(messages[self].lm);
                elsif isEven(self) /\ right /= 0 then
                    await messages[self].rm /= <<>>;
                    val := min(val, Head(messages[self].rm));
                    messages[self].rm := Tail(messages[self].rm);
                end if;
      end while;
end process;

end algorithm;*)
\* BEGIN TRANSLATION
VARIABLES messages, ordering, pc

(* define statement *)
servers == 1..ServerCount
max(a,b) == IF a > b THEN a ELSE b
min(a,b) == IF a <= b THEN a ELSE b
isEven(self) == self % 2 = 0
isOdd(self) == self % 2 = 1

VARIABLES left, right, val

vars == << messages, ordering, pc, left, right, val >>

ProcSet == (servers)

Init == (* Global variables *)
        /\ messages = [x \in servers |-> [lm |-> <<>>, rm |-> <<>>]]
        /\ ordering \in IF UseChosen THEN {ChosenOrdering} ELSE [1..ServerCount -> 1..ServerCount]
        (* Process server *)
        /\ left = [self \in servers |-> IF self > 1 THEN self-1 ELSE 0]
        /\ right = [self \in servers |-> IF self < ServerCount THEN self+1 ELSE 0]
        /\ val = [self \in servers |-> ordering[self]]
        /\ pc = [self \in ProcSet |-> "start_search"]

start_search(self) == /\ pc[self] = "start_search"
                      /\ pc' = [pc EXCEPT ![self] = "oddPhase"]
                      /\ UNCHANGED << messages, ordering, left, right, val >>

oddPhase(self) == /\ pc[self] = "oddPhase"
                  /\ IF isOdd(self) /\ right[self] /= 0
                        THEN /\ messages' = [messages EXCEPT ![right[self]].lm = Append(messages[right[self]].lm, val[self])]
                        ELSE /\ IF isEven(self)
                                   THEN /\ messages' = [messages EXCEPT ![left[self]].rm = Append(messages[left[self]].rm, val[self])]
                                   ELSE /\ TRUE
                                        /\ UNCHANGED messages
                  /\ pc' = [pc EXCEPT ![self] = "swapOdd"]
                  /\ UNCHANGED << ordering, left, right, val >>

swapOdd(self) == /\ pc[self] = "swapOdd"
                 /\ IF isOdd(self) /\ right[self] /= 0
                       THEN /\ messages[self].rm /= <<>>
                            /\ val' = [val EXCEPT ![self] = min(val[self], Head(messages[self].rm))]
                            /\ messages' = [messages EXCEPT ![self].rm = Tail(messages[self].rm)]
                       ELSE /\ IF isEven(self) /\ left[self] /= 0
                                  THEN /\ messages[self].lm /= <<>>
                                       /\ val' = [val EXCEPT ![self] = max(val[self], Head(messages[self].lm))]
                                       /\ messages' = [messages EXCEPT ![self].lm = Tail(messages[self].lm)]
                                  ELSE /\ TRUE
                                       /\ UNCHANGED << messages, val >>
                 /\ pc' = [pc EXCEPT ![self] = "evenPhase"]
                 /\ UNCHANGED << ordering, left, right >>

evenPhase(self) == /\ pc[self] = "evenPhase"
                   /\ IF isOdd(self) /\ left[self] /= 0
                         THEN /\ messages' = [messages EXCEPT ![left[self]].rm = Append(messages[left[self]].rm, val[self])]
                         ELSE /\ IF isEven(self) /\ right[self] /= 0
                                    THEN /\ messages' = [messages EXCEPT ![right[self]].lm = Append(messages[right[self]].lm, val[self])]
                                    ELSE /\ TRUE
                                         /\ UNCHANGED messages
                   /\ pc' = [pc EXCEPT ![self] = "swapEven"]
                   /\ UNCHANGED << ordering, left, right, val >>

swapEven(self) == /\ pc[self] = "swapEven"
                  /\ IF isOdd(self) /\ left[self] /= 0
                        THEN /\ messages[self].lm /= <<>>
                             /\ val' = [val EXCEPT ![self] = max(val[self], Head(messages[self].lm))]
                             /\ messages' = [messages EXCEPT ![self].lm = Tail(messages[self].lm)]
                        ELSE /\ IF isEven(self) /\ right[self] /= 0
                                   THEN /\ messages[self].rm /= <<>>
                                        /\ val' = [val EXCEPT ![self] = min(val[self], Head(messages[self].rm))]
                                        /\ messages' = [messages EXCEPT ![self].rm = Tail(messages[self].rm)]
                                   ELSE /\ TRUE
                                        /\ UNCHANGED << messages, val >>
                  /\ pc' = [pc EXCEPT ![self] = "start_search"]
                  /\ UNCHANGED << ordering, left, right >>

server(self) == start_search(self) \/ oddPhase(self) \/ swapOdd(self)
                   \/ evenPhase(self) \/ swapEven(self)

Next == (\E self \in servers: server(self))

Spec == /\ Init /\ [][Next]_vars
        /\ \A self \in servers : SF_vars(server(self))

\* END TRANSLATION
sorted == <>[](\A x \in servers: \A y \in x..Cardinality(servers): val[x] <= val[y])
=============================================================================
\* Modification History
\* Last modified Sun Aug 09 10:39:30 PDT 2020 by aaron
\* Created Fri Aug 07 16:09:12 PDT 2020 by aaron
