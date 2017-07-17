INPUT N
DIM AS INTEGER X(N)
t =0 : X(1)=0 : K=1
DO WHILE K>0
    X(k)=x(k)+1
    GOSUB 100
    DO WHILE (x(k) <= n)  AND (NOT( ISOK ))
        X(k) = x(k) + 1 
        GOSUB 100
    LOOP
    IF X(K) <= n  THEN
        IF  k=n  THEN
            T = T + 1
        ELSE
            K = k + 1
            X(k) = 0
        END IF
    ELSE
        K = k - 1
    END IF
LOOP
PRINT T
SLEEP
END
100
I = 1
DO WHILE i < k
    IF (x(I) = x(k)) OR (ABS(x(i)-x(k))= ABS(i-k)) THEN
        ISOK = 0 : RETURN
    END IF
    I = i + 1
LOOP
ISOK = -1
RETURN 