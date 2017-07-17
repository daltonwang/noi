DIM AS INTEGER LN,I,J,P,F,K,G,S
DIM AS INTEGER A(100),B(100)
DIM AS STRING N
INPUT N
LN=LEN(N)
FOR I=1 TO LN
    A(I)=VAL(MID(N,LN+1-I,1))
NEXT I
DO
    F=-1
    FOR I=1 TO LN
        IF A(I)<>A(LN+1-I) THEN F=0
    NEXT I
    IF F=-1 THEN 
        EXIT DO
    END IF
    P=P+1
    FOR I=1 TO LN
        B(I)=A(I)
    NEXT I
    K=LN
    G=0
    s=0
    FOR I=1 TO LN
        s=A(I)+B(LN+1-I)+G
        G=s \10
        A(I)=s MOD 10
    NEXT I
    DO WHILE G<>0
        LN=LN+1
        A(LN)=G MOD 10
        G=G\10
    LOOP
    PRINT "steP";P,
    FOR I=K TO 1 STEP -1
        PRINT USING"#";B(I);
    NEXT I
    PRINT "+";
    FOR I=1 TO K
        PRINT USING"#";B(I);
    NEXT I
    PRINT "=";
    FOR I=LN TO 1 STEP -1
        PRINT USING"#";A(I);
    NEXT I
    PRINT
LOOP UNTIL P>20 OR F=-1
IF P>20 THEN PRINT "error"
IF P=0 THEN
    PRINT "steP 0=";
    FOR I=LN TO 1 STEP -1
        PRINT USING"#";A(I);
    NEXT I
END IF
SLEEP
END
