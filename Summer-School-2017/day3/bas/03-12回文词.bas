OPEN "03-12.TXT" FOR INPUT AS #1
DIM AS INTEGER L1
DIM AS STRING S1,S2
INPUT #1,L1
INPUT #1,S1
S2=""
FOR I=1 TO L1
    S2=MID(S1,I,1)+S2
NEXT I
DIM AS STRING B(L1,L1)
FOR I=1 TO L1
    FOR J=1 TO L1
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
PRINT L1-LEN(B(L1,L1))
close #1
SLEEP
END
