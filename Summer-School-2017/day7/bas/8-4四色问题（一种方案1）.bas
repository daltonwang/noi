DIM AS INTEGER R(7,7),S(7)
FOR I=1 TO 7
    FOR J= 1 TO 7
        READ R(I,J)
    NEXT J
NEXT I
DATA 0,1,0,0,0,0,1
DATA 1,0,1,1,1,1,1
DATA 0,1,0,1,0,0,0
DATA 0,1,1,0,1,0,0
DATA 0,1,0,1,0,1,0
DATA 0,1,0,0,1,0,1
DATA 1,1,0,0,0,1,0
P=1   '地图
S(P)=1'地图选的颜色
DO WHILE P>0 
    F=-1  '标志变量
    FOR I=1 TO 7
        IF R(P,I)=1 THEN
            IF S(I)=S(P) THEN F=0
        END IF
    NEXT I    
    IF P<=7 AND F=-1 THEN
        IF P=7 THEN
            FOR I=1 TO 7
                PRINT S(I);
            NEXT I
            SLEEP
            END
        ELSE
            P=P+1
            S(P)=1
        END IF 
    ELSE
        S(P)=S(P)+1
        DO WHILE S(P)>4
           P=P-1
           S(P)=S(P)+1  
        LOOP       
    END IF
LOOP
SLEEP
END