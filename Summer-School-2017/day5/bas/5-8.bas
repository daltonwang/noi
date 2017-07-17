DIM AS STRING K
INPUT K
DIM AS INTEGER L,I,P,Q,S
L=LEN(K)
DIM AS STRING A(100),B(100),T
FOR I=1 TO L
    IF MID(K,I,1)>="0" AND MID(K,I,1)<="9" THEN
        T=T+MID(K,I,1)
    ELSE
        P=P+1 : A(P)=T : T=""
    END IF
NEXT I 
P=P+1 : A(P)=T
Q=0
FOR I=1 TO L
    IF MID(K,I,1)<"0" OR MID(K,I,1)>"9" THEN Q=Q+1 : B(Q)=MID(K,I,1)
NEXT I
S=VAL(A(1))
FOR I=1 TO Q
    IF B(I)="+" THEN
        S=S+VAL(A(I+1))
    ELSEIF B(I)="-" THEN
        S=S-VAL(A(I+1))
    ELSEIF B(I)="*" THEN
        S=S*VAL(A(I+1))
    END IF
NEXT I
PRINT S
SLEEP
END
