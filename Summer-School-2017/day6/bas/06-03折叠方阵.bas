INPUT "A,M,K=";A,M,K
DIM AS INTEGER N,B(M,M)
B(1,1)=A
I=1:J=2:P=1
DO
    P=P+1
    IF P MOD 2=0 THEN 
       FOR I=1 TO P
            A=A+1
            B(I,P)=A
        NEXT I
        FOR I=P-1 TO 1 STEP -1
            A=A+1
            B(P,I)=A
        NEXT I 
    ELSE
        FOR I=1 TO P
            A=A+1
            B(P,I)=A
        NEXT I
        FOR I=P-1 TO 1 STEP -1 
            A=A+1
            B(I,P)=A
        NEXT I
    END IF
LOOP UNTIL P=M

FOR I=1 TO M
    FOR J=1 TO M
        PRINT USING "###";B(I,J);
    NEXT J
    PRINT 
NEXT I
PRINT

S=0
FOR I=1 TO M
   S=S+B(I,K)
NEXT IPRINT S
SLEEP