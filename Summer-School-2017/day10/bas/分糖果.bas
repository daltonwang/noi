DIM AS INTEGER N,K
INPUT N,K
DIM AS INTEGER A(K)
P=1:A(1)=1:S=1:COUNT=0
DO WHILE P>0    
    IF P<=K AND S<=N THEN
        IF P=K AND S=N THEN
            COUNT=COUNT+1
            FOR I=1 TO K
                PRINT A(I);
            NEXT I
            PRINT
            A(P)=A(P)+1
            S=S+1
        ELSE
            P=P+1
            A(P)=1
            S=S+1
        END IF
        
    ELSE
        S=S-A(P)
        P=P-1
        A(P)=A(P)+1
        S=S+1
    END IF
    
LOOP
PRINT "COUNT=";COUNT
SLEEP
END