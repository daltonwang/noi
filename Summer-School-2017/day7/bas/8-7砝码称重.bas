DIM AS INTEGER A(5),B(5),M,K,S1,S2
FOR I = 1 TO 5: READ A(I): B(I) = 0: NEXT I
DATA 1,3,9,27,81
INPUT "M="; M
F = 0
DO WHILE B(0) = 0
    K = 5
    DO WHILE B(K) = 2
        B(K) = 0
        K = K - 1
    LOOP
    B(K) = B(K) + 1
    S1 = 0: S2 = 0
    FOR I = 1 TO 5
        IF B(I) = 1 THEN S1 = S1 + A(I)
        IF B(I) = 2 THEN S2 = S2 + A(I)
    NEXT I
    IF S1 + M = S2 THEN
        F = 1
        PRINT M;
        FOR I = 1 TO 5
            IF B(I) = 1 THEN PRINT "+"; A(I);
        NEXT I
        PRINT "=";
        
        p = 0
        DO: p = p + 1: LOOP UNTIL B(p) = 2
        PRINT A(p);
        FOR I = p + 1 TO 5
            IF B(I) = 2 THEN PRINT "+"; A(I);
        NEXT I
    END IF
LOOP
IF f = 0 THEN PRINT "no fInd"
SLEEP
END