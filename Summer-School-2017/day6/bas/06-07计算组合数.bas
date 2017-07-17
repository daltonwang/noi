DECLARE FUNCTION GCD(BYVAL X AS INTEGER,BYVAL Y AS INTEGER) AS INTEGER
INPUT M,N
IF M=0 THEN PRINT 1,1:SLEEP:END
DIM AS INTEGER A(1000),B(N)
FOR I=1 TO N
    B(I)=I
NEXT I
FOR I=2 TO M
    T=I:J=0
    DO
        DO
            J=J+1
        LOOP UNTIL GCD(B(J),T)<>1
        X=GCD(B(J),T)
        B(J)=B(J)/X:T=T/X
    LOOP UNTIL T=1
NEXT I

FOR I=2 TO N-M
    T=I:J=0
    DO
        DO
            J=J+1
        LOOP UNTIL GCD(B(J),T)<>1
        X=GCD(B(J),T)
        B(J)=B(J)/X:T=T/X
    LOOP UNTIL T=1
NEXT I

A(1)=1:K=1
FOR I=1 TO N
    IF B(I)<>1 THEN
        G=0
        FOR J=1 TO K
            X=A(J)*B(I)+G
            G=X\10
            A(J)=X MOD 10
        NEXT J
        DO WHILE G<>0
            K=K+1
            A(K)=G MOD 10
            G=G\10
        LOOP
    END IF
NEXT I
IF K>5 THEN
    FOR I=K TO K-4 STEP -1
        PRINT STR(A(I));
    NEXT I
    PRINT "       "
ELSE
    FOR I=K TO 1 STEP -1
        PRINT STR(A(I));
    NEXT I
    PRINT "       "
END IF
PRINT K
SLEEP
END 

FUNCTION GCD(BYVAL X AS INTEGER,BYVAL Y AS INTEGER) AS INTEGER
    DO
        R=X MOD Y
        X=Y
        Y=R
    LOOP UNTIL R=0
    GCD=X
END FUNCTION 
