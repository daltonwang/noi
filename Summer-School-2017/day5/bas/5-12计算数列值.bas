DIM AS INTEGER N,I,J,X,G
INPUT "N=";N
DIM AS INTEGER A(501),B(501)
FOR I=1 TO N
    X=1
    FOR J=1 TO 501
        A(J)=X\I
        X=(X MOD I)*10
    NEXT J
    G=0
    FOR J=501 TO 1 STEP -1
        X=A(J)+B(J)+G
        G=X\10
        B(J)=X MOD 10
    NEXT J
NEXT I
PRINT B(1);".";
FOR I=2 TO 501
    PRINT USING "#";B(I);
NEXT I
SLEEP
