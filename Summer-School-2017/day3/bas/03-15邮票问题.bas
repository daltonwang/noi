DIM AS STRING FN
INPUT FN
OPEN FN  FOR INPUT AS #1
DIM AS INTEGER A(100),S(25500),M,N,I,J,MAX,T,K
INPUT #1,M,N
MAX=0
FOR I=1 TO M 
    INPUT #1,A(I)
    S(A(I))=1
    IF A(I)>MAX THEN MAX=A(I)
NEXT I

I=1
FOR I=2 TO N
    T=MAX
    FOR J=MAX  TO 1 STEP-1
        IF S(J)=1 THEN
            FOR K=1 TO M
                S(J+A(k))=1
                IF A(K)+J>T THEN T=A(K)+J
            NEXT K
        END IF
    NEXT J
    MAX=T
NEXT

I=1
DO WHILE S(I)=1 :I=I+1 : LOOP
PRINT I-1
SLEEP
