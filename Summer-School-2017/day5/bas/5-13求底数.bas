DIM AS STRING AA,BB
DIM AS INTEGER N,I,J,K,G,X,T
INPUT "N=";N
INPUT "P=";AA
DIM  AS INTEGER A(40)

DO
    A(1)=1
    FOR I=2 TO 40
        A(I)=0 
    NEXT I
    K=K+1
    FOR I=1 TO N
        G=0
        FOR J=1 TO 40
            X=A(J)*K+G
            G=X\10
            A(J)=X MOD 10
        NEXT J
    NEXT I
    BB=""
    T=40
    DO WHILE A(T)=0
        T=T-1
    LOOP
    FOR I=T TO 1 STEP -1
        BB=BB+STR(A(I))
    NEXT I
    IF AA=BB THEN EXIT DO
LOOP UNTIL AA=BB OR LEN(BB)>LEN(AA)
IF AA=BB THEN PRINT "K=";K  ELSE PRINT "ERROR!"
SLEEP
END
