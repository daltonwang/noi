INPUT "N=";N
DIM AS INTEGER A(N)
J=1:S=1:K=1:T=0
DO
    J=J+1:K=K*J
    IF J<N AND K<=N THEN
        A(S)=J
'        FOR I=1 TO S:PRINT A(I);:NEXT I:PRINT ,K:SLEEP
        IF K=N THEN 
'            FOR I=1 TO S-1
'                PRINT A(I);"*";
'            NEXT I
'            PRINT A(S):SLEEP
            T=T+1
            K=K/A(S)
            S=S-1
            J=A(S)
            K=K/J
        ELSE
            J=J-1
            S=S+1
        END IF
    ELSE
        K=K/J
        S=S-1
        J=A(S)
        K=K/J
    END IF
LOOP UNTIL S=0
PRINT T
SLEEP