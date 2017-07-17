DECLARE SUB MAPCOLOR 
DIM SHARED S(100) AS INTEGER
DIM SHARED R(100,100) AS INTEGER
DIM SHARED N AS INTEGER
N=7
DIM A AS INTEGER
DIM B AS INTEGER
DATA 0,1,0,0,0,0,1
DATA 1,0,1,1,1,1,1
DATA 0,1,0,1,0,0,0
DATA 0,1,1,0,1,0,0
DATA 0,1,0,1,0,1,0
DATA 0,1,0,0,1,0,1
DATA 1,1,0,0,0,1,0
FOR A=1 TO N   '输入省之间关联 
    FOR  B=1  TO  N 
      READ R(A,B)
    NEXT B
NEXT A
FOR  A=1   TO  N   '输出关联矩阵 
   FOR  B=1  TO  N
      PRINT R(A,B);
   NEXT B
   PRINT
NEXT A
MAPCOLOR   '调用涂色过程 
FOR  A=1  TO  N    '输出解 
    PRINT A;":";S(A),
NEXT A
SLEEP
END
SUB MAPCOLOR
DIM X AS INTEGER
DIM Y AS INTEGER
DIM K AS INTEGER
S(1)=1    '初始化 
X=2
Y=1
DO WHILE X<=N
    DO WHILE (Y<=4) AND (X<=N)
        K=1
        DO WHILE K<X AND S(K)*R(X,K)<>Y 
            K=K+1
        LOOP
        IF K<X THEN 
            Y=Y+1  '试探下一种颜色
        ELSE
            S(X)=Y    '给本区涂 Y 颜色 
            X=X+1     '准备试探下一个区域 
            Y=1   '颜色重新赋值
        ENDIF
        IF  Y>4  THEN    ' 回溯到上一个省
           X=X-1  
           Y=S(X)+1   '修正颜色值 
         ENDIF
    LOOP
LOOP
END SUB