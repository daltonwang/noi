INPUT N
N=N+1
DIM AS INTEGER A(N)
G=0:K=1:A(K)=1
DO WHILE K>0 
    IF K<=N AND A(K)<=N THEN
        F=-1
        IF K>1 THEN 
            X=ABS(A(K)-A(K-1))
            IF X<>3 AND X<>4 AND X<>5 THEN F=0
            FOR I=1 TO K-1
                IF A(I)=A(K) THEN F=0
            NEXT I
        END IF
        IF K=N THEN 
            X=ABS(A(1)-A(N))
            IF X<>3 AND X<>4 AND X<>5 THEN F=0
        END IF
        IF F=-1 THEN
            IF K=N THEN
                FOR I=1 TO N
                    PRINT A(I)-1;
                NEXT I
                SLEEP:END
                PRINT
                A(K)=A(K)+1
            ELSE
                K=K+1
                A(K)=1
            END IF
        ELSE
            A(K)=A(K)+1
        END IF
    ELSE
        K=K-1:A(K)=A(K)+1
    END IF
LOOP
SLEEP
END
