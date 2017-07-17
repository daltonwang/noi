DIM AS STRING N
DIM AS INTEGER L,K,N1,P,I
INPUT "N,K=";N,K
DIM AS INTEGER A(100)
L=0
DO
    L=L+1
LOOP UNTIL MID(N,L,1)="." OR L>LEN(N)

N1=VAL(LEFT(N,L-1))
DIM AS SINGLE N2
N2=VAL("0."+MID(N,L+1))
P=0
DO
    P=P+1
    A(P)=N1 MOD K
    N1=N1\K
LOOP UNTIL N1=0
FOR I=P TO 1 STEP -1
    IF A(I)<10 THEN
        PRINT CHR(A(I)+48);
    ELSE 
        PRINT CHR(A(I)+55);
    END IF
NEXT I
IF N2<>0 THEN 
    PRINT ".";
    DIM AS INTEGER B(100)
    P=0
    DO
        P=P+1
        B(P)=VAL(LEFT(STR(N2*P),1))
        N2=VAL("0."+MID(STR(N2*P),3))
    LOOP UNTIL N2=0
    FOR I=1 TO P
        IF A(I)<10 THEN
            PRINT CHR(A(I)+48);
        ELSE 
            PRINT CHR(A(I)+55);
        END IF
    NEXT I
END IF
SLEEP
