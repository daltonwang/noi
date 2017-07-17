declare function f(lmid as integer) as integer
dim as longint n,p1
dim as integer sum,lmin,lmax
dim shared k as longint
input n,k,p1
dim shared p(1000) as longint
p(0)=0:p(1)=p1
for i=2 to k
    p(i)=p(i-1)+(p(i-1)*2357+137)mod 10+1 
    print p(i);
next i
print
lmax=1000:lmin=0
do while lmin<>lmax-1
    lmid=(lmin+lmax)\2
    sum=f(lmid)
    if sum>=n then lmin=lmid else lmax=lmid
loop
print lmin
sleep
end

function f(lmid as integer)as integer
    dim as longint i,s,j
    i=1:j=0:s=1
    do while i<k
        i=i+1
        j=j+p(i)-p(i-1)
        if j>=lmid then
            s=s+1
            j=0
        end if
    loop
    f=s
end function
