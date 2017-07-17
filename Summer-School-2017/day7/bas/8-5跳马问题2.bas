INPUT M,N
DIM AS INTEGER A(M,N),V(4,2),G(100),ROAD(100,2)
DATA 1,-2,2,-1,2,1,1,2
FOR I=1 TO 4
READ V(I,1),V(I,2)
NEXT I
P=1: X=0: Y=0: COUNT=0: G(P)=1
ROAD(P,1)=X : ROAD(P,2)=Y
DO WHILE P>0
    IF X>=0 AND X<=M AND Y>=0 AND Y<=N   THEN
        IF X=M AND Y=N THEN
            FOR I=1 TO P
                PRINT ROAD(I,1);ROAD(I,2);"-->";
            NEXT I
            PRINT
            SLEEP
            END
        ELSE
            X=X+V(G(P),1)             
            Y=Y+V(G(P),2)            
            P=P+1
            ROAD(P,1)=X
            ROAD(P,2)=Y
            G(P)=1            
                        
        END IF        
    ELSE
        G(P)=G(P)+1           
       
        DO WHILE G(P)>4 AND P>0
          P=P-1        
          X=ROAD(P,1)        
          Y=ROAD(P,2)              
          G(P)=G(P)+1
        
       LOOP       
    END IF
LOOP
PRINT "NO"
SLEEP