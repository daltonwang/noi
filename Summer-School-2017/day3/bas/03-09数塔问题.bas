DIM AS STRING FN
INPUT FN
OPEN FN FOR INPUT AS #1
DIM AS INTEGER N,I,J
INPUT #1,N
DIM AS INTEGER A(N,N),B(N,N),C(N,N)
FOR I=1  TO N
    FOR J=1 TO I
       INPUT  #1,A(I,J)
       C(I,J)=0
       IF I=N THEN B(I,J)=A(I,J) ELSE B(I,J)=0
    NEXT J
NEXT I
FOR I= N TO 2 STEP -1
    FOR J=1  TO I-1
        IF B(I,J)<B(I,J+1)  THEN
            B(I-1,J)=A(I-1,J)+B(I,J+1) : C(I-1,J)=1
        ELSE
            B(I-1,J)=A(I-1,J)+B(I,J) : C(I-1,J)=0
        END IF
    NEXT J
NEXT I
PRINT  B(1,1)
I=1 : J=1
DO
    PRINT A(I,J);"->";
    IF  C(I,J)=0  THEN I=I+1 ELSE I=I+1:J=J+1
LOOP UNTIL I=N
PRINT A(I,J)
CLOSE #1
SLEEP

