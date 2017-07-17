DIM AS INTEGER N,K,I,S,F
INPUT K
N = 2 * K
DIM AS INTEGER A(N), B(N)

FOR I = 1 TO N
    A(I) = I
NEXT I

DO
    FOR I = 1 TO N
        B(I) = 0
    NEXT I
    FOR I = 1 TO K
        B(I * 2) = A(I)
    NEXT I
    FOR I = K + 1 TO N
        B((I - K) * 2 - 1) = A(I)
    NEXT I
    S = S + 1
    FOR I = 1 TO N
        A(I) = B(I)
    NEXT I
    F = 0
    FOR I = 1 TO N
        IF B(I) <> I THEN F = 1
    NEXT I
LOOP UNTIL F = 0
PRINT S
SLEEP
END

