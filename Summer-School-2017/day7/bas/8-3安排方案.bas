input n
dim as integer a(n,n),k,s(n),max,i,j,sum
for i=1 to n
    for j=1 to n
        input a(i,j)
    next j
next i

k=1:s(1)=1:max=0
do 
    
    if k<=n and s(k)<=n then
        if k=n and s(k)<=n then
            sum=0
            for i=1 to n
                sum=sum+a(i,s(i))
            next i
            if sum>max then max=sum
            s(k)=s(k)+1
        else            
            k=k+1
            s(k)=1
        end if        
    else
        k=k-1
        s(k)=s(k)+1
    end if    
loop until k=0
print max
sleep
end