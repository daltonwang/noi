DIM AS STRING fn
INPUT fn
OPEN fn FOR INPUT AS #1
INPUT #1,n,m
DIM AS INTEGER w(M),p(M),f(m,n)
FOR i=1 TO m
    INPUT #1,w(I),p(I)
NEXT i
FOR i=1 TO m
    FOR j=1 TO n
        IF j<w(I) THEN 
            f(I,J)=f(I-1,j)
        ELSE
            IF f(I-1,j)>f(i-1,j-w(I))+p(I) THEN f(I,J)=f(I-1,j) ELSE f(I,J)=f(i-1,j-w(I))+p(I) 
        END IF
    NEXT j
NEXT i
PRINT f(m,n)
SLEEP
