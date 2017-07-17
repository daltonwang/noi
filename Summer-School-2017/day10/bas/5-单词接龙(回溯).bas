DIM AS INTEGER N,I,J,K,TOP,LMAX,L,F(N),STACK(N)
DIM AS STRING FN,A(N)
INPUT FN
OPEN FN FOR INPUT AS #1
INPUT #1,N
FOR I=1 TO N
    INPUT #1,A(I)    
NEXT I

LMAX=1   '龙头
L=1
FOR I=1 TO N
    F(I)=0  '访问标志，只能用一次，0表示没用过，1表示用过了
NEXT I
F(1)=1     ' 初始化
STACK(1)=1   ' 栈顶
TOP=1
K=1          '位置(方向)
WHILE TOP>=1 
    K=K+1
    IF K>N THEN   '处理结束
        K=STACK(TOP)   '回溯
        TOP=TOP-1
        L=L-1
        F(K)=0        '没访问
    ELSE
        IF F(K)=0 AND MID(A(STACK(TOP)),2,1)=MID(A(K),1,1) THEN
            L=L+1
            IF L>LMAX THEN
                LMAX=L
                F(K)=1   '标记
                TOP=TOP+1
                STACK(TOP)=K
                K=1    '位置
            END IF
        END IF
    END IF
WEND
PRINT LMAX
CLOSE #1
SLEEP
END
               