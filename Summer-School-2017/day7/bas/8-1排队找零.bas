DIM A(2*N) AS INTEGER
INPUT N
FOR I=0 TO 2*N
    A(I)=-1
NEXT I
P=1
A(1)=0
DO WHILE A(0)=-1
        X1=0:X2=0
        FOR I=1 TO P
            IF A(I)=0 THEN X1=X1+1
            IF A(I)=1 THEN X2=X2+1
        NEXT I
        IF X1>=X2 THEN
            IF P=2*N THEN
               S1=0:S2=0
               FOR I=1 TO 2*N
                   IF A(I)=0 THEN S1=S1+1
                   IF A(I)=1 THEN S2=S2+1
               NEXT I 
               IF S1=N AND S2=N THEN
                   SUM=SUM+1
                   A(P)=A(P)+1
                  DO WHILE A(P)=2   '可能产生回溯
                      A(P)=-1
                      P=P-1
                      A(P)=A(P)+1
                  LOOP  
               ELSE
                  A(P)=A(P)+1
                  DO WHILE A(P)=2   '可能产生回溯
                      A(P)=-1
                      P=P-1
                      A(P)=A(P)+1
                  LOOP  
               END IF 
            ELSE
                P=P+1
                A(P)=A(P)+1
               
            END IF
        ELSE
            A(P)=A(P)+1
            DO WHILE A(P)=2   '可能产生回溯
                  A(P)=-1
                  P=P-1
                  A(P)=A(P)+1
            LOOP  
        END IF
LOOP
PRINT SUM
SLEEP
END
