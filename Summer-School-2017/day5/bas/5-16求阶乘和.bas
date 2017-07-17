DIM AS INTEGER N,I,J,G,X,K
INPUT "N=";N
DIM AS INTEGER A(1000),B(1000)
A(1)=1
FOR I=1 TO N
    G=0
    FOR J=1 TO 1000
        X=A(J)*I+G
        G=X\10
        A(J)=X MOD 10
    NEXT J
    G=0
    FOR J=1 TO 1000
        X=A(J)+B(J)+G
        G=X\10
        B(J)=X MOD 10
    NEXT J
NEXT I
PRINT "S=";
K=1000
DO WHILE B(K)=0:K=K-1:LOOP
FOR I=K TO 1 STEP -1
    PRINT USING "#";B(I);
NEXT I
SLEEP

