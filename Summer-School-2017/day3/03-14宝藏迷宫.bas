OPEN "03-14.TXT" FOR  INPUT AS #1
INPUT #1,M,N
DIM AS INTEGER A(M,N)
FOR I = 1 TO M
    FOR J = 1 TO N
          INPUT #1,A(I,J)
    NEXT J
NEXT I
FOR I = 0 TO M : A(I, 0) = 0 : NEXT I
FOR I = 0 TO N : A(0, I) = 0 : NEXT I
MAX=0
FOR I = 1 TO M
    FOR J = 1 TO N
        IF  A(I-1,J)>A(I,J-1)   THEN MAX=A(I-1,J)  ELSE  MAX=A(I,J-1)      
        A(I,J)=  A(I,J)+MAX
    NEXT J
NEXT I
PRINT  A(M,N)
CLOSE #1
SLEEP

