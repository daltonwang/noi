DIM AS STRING FN
INPUT FN
OPEN FN FOR INPUT AS #1
DIM AS STRING S1,S2
INPUT #1,S1
INPUT #1,S2
L1=LEN(S1):L2=LEN(S2)
DIM AS STRING B(L1,L2)
FOR I=1 TO L1
    FOR J=1 TO L2
        B(I,J)=""
    NEXT J
NEXT I
FOR I=1 TO L1
    FOR J=1 TO L2
        IF MID(S1,I,1)=MID(S2,J,1) THEN
            B(I,J)=B(I-1,J-1)+MID(S1,I,1)
        ELSE
            IF LEN(B(I-1,J))>=LEN(B(I,J-1)) THEN
                B(I,J)=B(I-1,J)
            ELSE
                B(I,J)=B(I,J-1)
            END IF
        END IF
    NEXT J
NEXT I
PRINT LEN(B(L1,L2))
PRINT B(L1,L2)
CLOSE #1
SLEEP
END
