---- MODULE implementsA ----
LOCAL INSTANCE Integers
CONSTANT A
ASSUME A \in Int

IsEven == (A % 2) = 0
IsOdd == (A % 2) = 1

====
