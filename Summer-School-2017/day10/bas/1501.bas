INPUT  n
DIM AS INTEGER a(n)
FOR i = 2 TO n
    f = -1
    FOR j = 2 TO SQR(i)
        IF i MOD j = 0 THEN f = 0: EXIT FOR
    NEXT j
    IF f=-1 THEN a(i) = 1
NEXT i
FOR i = 1 TO n
    IF a(i) = 1 THEN
        FOR j = 1 TO n - i
            IF a(j) = 1 THEN
                k = n - i - j
                IF a(k) = 1 AND i + j + k = n THEN
                    PRINT STR(i); " "; STR(j); " "; STR(k)
                    sleep:END
                END IF
            END IF
        NEXT j
    END IF
NEXT i
PRINT "no find"
sleep
END


