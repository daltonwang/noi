dim as integer n,m
read n,m
data 3,5
data 1,2,4,8,9
dim as integer a(m),f(n,m)
for i=1 to m
    read a(i)
next i
for i=1 to m
    f(1,i)=0
next i
for i=2 to m
    f(2,i)=a(i)-a(1)
next i



for i=3 to n
    if f(i-1,i-1)<a(i)-a(i-1) then f(i,i)=f(i-1,i-1) else f(i,i)=a(i)-a(i-1)
    for j=i+1 to m
        max=0
        for k=i to j-1
            if f(i-1,k)<a(j)-a(k) then min=f(i-1,k) else min=a(j)-a(k)
            if min>max then max=min
        next k
        f(i,j)=max
    next j
next i
for i=1 to n
    for j=1 to m
        print using "###";f(i,j);
    next j
    print
next i
sleep
end

            
   