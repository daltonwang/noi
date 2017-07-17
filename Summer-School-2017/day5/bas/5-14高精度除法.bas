DIM AS INTEGER P,Q,A,I,J,M,F,K
DIM AS INTEGER C(20),D(20)

INPUT "Q,P=";Q,P
A=Q\P:Q=Q MOD P
PRINT A;
IF Q<>0 THEN
    PRINT ".";    
    C(0)=Q:M=0
    FOR J=1 TO 20
        Q=C(J-1)*10
        D(J)=Q\P
        C(J)=Q MOD P
        IF C(J)=0 THEN EXIT FOR
        FOR I=0 TO J-1
            IF C(I)=C(J) THEN M=I+1:F=1:EXIT FOR
        NEXT I
        IF F=1 THEN EXIT FOR
    NEXT J
    K=20
    DO WHILE D(K)=0:K=K-1:LOOP
    FOR I=1 TO K
        IF I=M THEN PRINT "{";
        PRINT USING "#";D(I);
    NEXT I
    IF M<>0 THEN PRINT "}"
END IF
SLEEP
END
