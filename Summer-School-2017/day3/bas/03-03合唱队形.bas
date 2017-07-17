DIM AS STRING FN
INPUT FN
OPEN FN+".TXT" FOR INPUT AS #1
INPUT #1,N
DIM AS INTEGER A(N),B(N)
FOR I = 1 TO N
    INPUT #1, A(I)
NEXT J
FOR I = 1 TO N
    K= 0
    FOR J =I-1 TO 1 STEP -1     
        IF A(I) > A(J) AND B(J) > K THEN K=B(J)             
    NEXT J
    B(I) =K+1       
NEXT I
K = 0
FOR I = 1 TO N
    IF B(I) > K THEN  K=B(I)
NEXT I
PRINT  N-K
SLEEP
END
