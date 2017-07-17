INPUT A,B,R
DIM AS INTEGER M(20000),Z(20000)
FOR I=A TO B
    FOR J=1 TO I-1
        X=I
        Y=J
        DO WHILE X<>Y
            IF X>Y THEN X=X-Y ELSE Y=Y-X
        LOOP
        IF X=1 AND Y=1 AND I<>1 THEN 
            K=K+1
            M(K)=I:Z(K)=J
        END IF
    NEXT J
NEXT I

FOR I=1 TO K-1
    FOR J=I+1 TO K
        IF Z(I)/M(I)>Z(J)/M(J) THEN SWAP Z(I),Z(J):SWAP M(I),M(J)
    NEXT J
NEXT I

PRINT Z(R);"/";M(R)
SLEEP 