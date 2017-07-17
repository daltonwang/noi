DIM AS STRING T
INPUT "T=";T
T=T+" "
DIM AS INTEGER LT,I,J,P
LT=LEN(T)
DIM AS STRING A(LT),X
X=""
FOR I=1 TO LT
    IF MID(T,I,1)<>" " AND MID(T,I,1)<>"," AND MID(T,I,1)<>"." THEN 
        X=X+MID(T,I,1)
    ELSE
        P=P+1
        A(P)=X
        X=""
        DO WHILE MID(T,I+1,1)=" ":I=I+1:LOOP  'ÅÅ³ý¶à¿Õ¸ñ
    END IF
NEXT I
DIM AS INTEGER B(P)
FOR I=1 TO P
    B(I)=1
NEXT I
FOR I=1 TO P-1
    FOR J=I+1 TO P
        IF A(I)=A(J) THEN A(J)="":B(I)=B(I)+1
    NEXT J
NEXT I
FOR I=1 TO P
    IF A(I)<>"" THEN PRINT A(I),B(I)
NEXT I
SLEEP

