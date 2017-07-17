INPUT "N,M=";N,M
T=0
FOR I=N TO M
    F=-1
    FOR J=1 TO LEN(STR(I))\2
        IF MID(STR(I),J,1)<>MID(STR(I),LEN(STR(I))+1-J,1) THEN F=0
    NEXT J
    IF F=-1 THEN 
        FOR J=2 TO SQR(I)
            IF I MOD J=0 THEN F=0
        NEXT J
        IF F=-1 AND I<>1 THEN T=T+1
    END IF
NEXT I
PRINT T
SLEEP