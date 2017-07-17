DIM AS STRING FN
INPUT FN
OPEN FN  FOR INPUT AS #1
DIM AS INTEGER N,M,I,J
INPUT #1,N,M
DIM AS INTEGER H(N,M),Z(N,M),B(N,M)
FOR I=1 TO N
    FOR J= 2 TO M
        INPUT #1,H(I,J)
    NEXT J
NEXT I
FOR I=1 TO N-1
    FOR J=1 TO M
        INPUT #1,Z(I,J)
    NEXT J
NEXT I
FOR I=N-1 TO 1 STEP -1
    B(I,1)=B(I+1,1)+Z(i,1)
NEXT I
B(N,0)=0
FOR I=N TO 1 STEP -1
    FOR J=2 TO M
        IF B(I+1,J)+Z(I,J)<B(I,J-1)+H(I,J) THEN
            B(I,J)=B(I+1,J)+Z(I,J)
        ELSE
            B(I,J)=B(I,J-1)+H(I,J)
        END IF
    NEXT J
NEXT I
PRINT B(1,M)
SLEEP
END


