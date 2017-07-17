dim as integer a(2*n)
input n
for i=1 to 2*n
    a(i)=-1
next i
p=1
a(p)=0
count=0
do while p>0
    X1=0:X2=0
        FOR I=1 TO P
            IF A(I)=0 THEN X1=X1+1
            IF A(I)=1 THEN X2=X2+1
        NEXT I
    if p<=2*n and a(p)<2 and x1>=x2 then
        if p=2*n and a(p)<2 and x1=x2 then            
            count=count+1
            a(p)=a(p)+1                       
        else
            p=p+1
            a(p)=a(p)+1
           
        end if        
    else
        A(P)=-1
        p=p-1
        a(p)=a(p)+1        
    end if    
loop
print count
sleep
end