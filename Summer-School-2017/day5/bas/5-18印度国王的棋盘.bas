DIM AS INTEGER N,M,I,J,G,X,K
INPUT "N,M=";N,M
DIM AS INTEGER A(100), S(100)

A(1)=1
FOR I=1 TO N-2
    G=0
    FOR J=1 TO 100
        X=A(J)*2+G
        G=X\10
        A(J)=X MOD 10
    NEXT J
NEXT I

FOR I=N-1 TO M-1
    G=0
    FOR J=1 TO 100
        X= A(J)*2+G
        G= X\10
        A(J)=X MOD 10
    NEXT J
    G = 0
    FOR J=1 TO 100
        X= S(J)+A(J)+G
        G= X\10
        S(J)=X MOD 10
    NEXT J
NEXT I

K = 100
DO WHILE S(K)=0
    K=K-1
LOOP

FOR I=K TO 1 STEP -1
    PRINT USING "#"; S(I);
    IF I MOD 3=1 AND I<>1 THEN PRINT ",";
NEXT I
SLEEP
END
