declare  function place ( t as integer) as byte
declare  sub  writ
dim shared  x(100) as integer
dim  shared  as integer a,n,k,p
 input  n 
 a=0 :X(1)=0: K=1:p=0
 do WHILE  k>0   
    X(k)=x(k)+1 
    do  While  (x(k)<=n) and (place(k)=0)
        X(k)=x(k)+1
    loop          
    If  x(k)<=n  then  
                   If  k=n  then 
                             writ
                             a=a+1 
                            Else
                             k=k+1
                             x(k)=0
                            end if 
    Else  
        k=k-1  '{ 回溯 ，退回上一个皇后 } ；
    end if
  loop
  print p
  sleep
  end

 sub writ
  dim   as integer i
  for i=1 to n
    print i,x(i)
  next i
  p=p+1
  end sub

  function  place (t as integer ) as byte
  dim  as integer i
   I=1 :place=1:b=1
   do While  (I<t) and (b=1)  
       If  (x(I)=x(t)) or (abs(x(I)-x(t))= abs(I-t))   Then 
                                                           place=0
                                                           b=0
                                                        end if
      I=I+1    
   loop
 End function  
