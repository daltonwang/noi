
DECLARE FUNCTION XT(AB AS STRING) AS INTEGER
DIM AS STRING X,Y,A(100)
DIM AS INTEGER K,I,L,F
READ X
DATA "[ABC(DEF)]
L=LEN(X)
F=-1
FOR I=1 TO L
    Y=MID(X,I,1)
    IF Y="(" OR Y="[" OR Y="<" OR Y="{" THEN
        K=K+1
        A(K)=Y
        PRINT Y;
    END IF
    IF Y=")" OR Y="]" OR Y=">" OR Y="}" THEN
        PRINT Y;
        M=XT(Y)
        N=XT(A(K))
        IF M=N THEN 
            A(K)=""
            K=K-1 
        ELSE 
            F=0
        END IF 
    END IF    
NEXT I
PRINT
IF F=0 THEN PRINT "NO"
IF F=-1 AND A(1)="" THEN PRINT "YES"
SLEEP
END

FUNCTION XT(AB AS STRING) AS INTEGER '用来区分符号的优先级，把优先级转化为数字 
    SELECT CASE AB
    CASE "(",")"
        XT=1
    CASE "[","]"
        XT=2
    CASE "<",">"
        XT=3
    CASE "{","}"
        XT=4
    END SELECT
END FUNCTION