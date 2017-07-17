DIM xx(4) AS INTEGER
DIM yy(4) AS INTEGER
DIM p AS INTEGER
DIM k AS INTEGER
DIM i AS INTEGER
DIM j AS INTEGER
DIM x1 AS INTEGER
DIM y1 AS INTEGER
DIM a(10) AS INTEGER
DIM tx(10) AS INTEGER
DIM ty(10) AS INTEGER

FOR i=1 TO 4
    READ xx(i),yy(i)
NEXT i
DATA 1,2,2,1,2,-1,1,-2
p=0
tx(1)=0
ty(1)=0
k=1
a(k)=0
DO
    a(k)=a(k)+1
    DO WHILE a(k)<=4
        x1=tx(k)+xx(a(k))
        y1=ty(k)+yy(a(k))
        IF (x1<=8) AND (y1>=0) AND (y1<=4) THEN
            k=k+1
            tx(k)=x1
            ty(k)=y1
            IF (y1=4) AND (x1=8) THEN
                p=p+1
                PRINT "<";p;"> ";
                FOR j=1 TO k
                    PRINT "(";tx(j);",";ty(j);
                    IF j=k THEN PRINT ")" ELSE PRINT ")-";
                NEXT j
            ENDIF
            a(k)=1
        ELSE
            a(k)=a(k)+1
        ENDIF
    LOOP
    k=k-1
LOOP UNTIL k<1
PRINT"From 0,0 to 8,4  All of the ways are:"; p
SLEEP
END
