DIM AS INTEGER N,I,J,K,G,X
INPUT "N=";N
DIM AS INTEGER A(1000),B(1000)
FOR I=1 TO N
    FOR J=1 TO 1000:A(J)=0:NEXT J
    A(1)=1
    FOR K=1 TO N
        G=0
        FOR J=1 TO 1000
            X=A(J)*I+G
            G=X\10
            A(J)=X MOD 10
        NEXT J
    NEXT K
    G=0
    FOR J=1 TO 1000
        X=A(J)+B(J)+G
        G=X\10
        B(J)=X MOD 10
    NEXT J
NEXT I
K=1000
DO WHILE B(K)=0:K=K-1:LOOP
FOR I=K TO 1 STEP -1
    PRINT USING "#";B(I);
NEXT I
SLEEP
