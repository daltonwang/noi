DIM AS INTEGER I,J,K,T,G,N,X,P
DIM AS INTEGER A(100), B(100), C(100), D(100), S(100) 
FOR I = 1 TO 100
  A(I) = 1: B(I) = 1 : S(I) = 0
NEXT I
S(1) = 2
K = 1: T = 1
INPUT "N="; N
IF N < 3 THEN
    IF N = 1 THEN PRINT 1
    IF N = 2 THEN PRINT 1,1  
ELSE
    PRINT 1,1,
    FOR I = 3 TO N
        G = 0
        FOR J = 1 TO K
            X = A(J) + B(J) + G
            G = X \ 10
            C(J) = X MOD 10
        NEXT J
        IF G > 0 THEN K = K + 1: C(K) = G
        
        FOR J=K TO 1 STEP -1
            PRINT USING "#";C(J);
        NEXT J
        PRINT ,
        
        G = 0
        FOR J = 1 TO T
            X = S(J) + C(J) + G
            G = X \ 10
            S(J) = X MOD 10
        NEXT J
        IF G > 0 THEN T = T + 1: S(T) = G
        
        FOR J = 1 TO K
            A(J) = B(J)
            B(J) = C(J)
        NEXT J
    NEXT I
END IF
PRINT

P = 100
DO WHILE S(P) = 0 AND P > 1
    P = P - 1
LOOP
PRINT "S=";
FOR I = P TO 1 STEP -1
    PRINT USING "#"; S(I);
NEXT I
SLEEP
END

