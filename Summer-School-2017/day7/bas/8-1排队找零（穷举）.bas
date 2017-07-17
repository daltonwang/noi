dim b(2*n) as integer
input n
for i=1 to n
    b(i)=0
    b(n+i)=1
next i
sum=0
do while b(0)=0 
    f=-1
    for i=1 to 2*n
        s1=0:s2=0
        for t=1 to i
            if b(t)=0 then s1=s1+1
            if b(t)=1 then s2=s2+1              
        next t
        if s1<s2 then f=0        
    next i
    if f=-1 then sum=sum+1
    k=2*n
    do while b(k-1)>=b(k)
        k=k-1
    loop
    j=2*n
    do while b(k-1)>=b(j)
        j=j-1
    loop
    swap b(k-1),b(j)
    for p=k to 2*n-1
        for q=p+1 to 2*n
            if b(p)>b(q) then swap b(p),b(q)
        next q
    next p
loop
print sum
sleep
end