INPUT n, k
DIM AS INTEGER a(n)
FOR i = 1 TO n
    a(i) = 1
NEXT i
b = 0: p = n
DO WHILE a(1) < n
    IF p = k THEN b = b + 1
    i = a(p): a(p) = 0: p = p - 2
    DO WHILE i > 0
        p = p + 1
        a(p) = a(p) + 1
        i = i - 1
    LOOP
LOOP
PRINT  b
SLEEP
END


