DIM AS INTEGER N,I,J,L,F,K,P
READ N
DIM AS STRING A(N),C
FOR I=1 TO N:READ A(I):NEXT I
FOR I=1 TO N-1
    FOR J=N-1 TO I STEP -1
        IF LEN(A(J))>LEN(A(J+1)) THEN SWAP A(J),A(J+1)
    NEXT J
NEXT I
L=LEN(A(1))
I=0:P=0
K=L
DO
    I=0
    DO
        I=I+1
        C=MID(A(1),I,K)
        F=0
        FOR J=2 TO N
            IF INSTR(A(J),C)=0 THEN F=1
        NEXT J
        IF F=0 THEN PRINT C:P=1
    LOOP UNTIL I=L-K+1
    K=K-1
LOOP UNTIL K=0 OR P=1
IF P<>1 THEN PRINT "No find"
DATA 5,"GHJSDERTOP","DFERTGHJ","VBERTGHJ","EERTGGHJJK","DDGGHJUUERT"
SLEEP
