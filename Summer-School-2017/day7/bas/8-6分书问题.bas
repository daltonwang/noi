DECLARE SUB try (i AS INTEGER)
DIM SHARED like(5, 5) AS INTEGER ' {个人对各种书的喜好情况}
DIM SHARED nam(5) AS STRING    '{数组name存放学生姓名}
DIM SHARED book(5) AS INTEGER   '{存放各人分配到的书的编号}
DIM SHARED f(5) AS INTEGER
DIM SHARED i AS INTEGER
DIM SHARED c AS INTEGER

FOR i = 1 TO 5
    f(i) = 0
NEXT i
FOR i = 1 TO 5
  book(i) = 0
NEXT i
OPEN "02-08.txt" FOR INPUT AS #1
FOR i = 1 TO 5
    FOR j = 1 TO 5
        INPUT #1, like(i, j)
    NEXT j
NEXT i
FOR i = 1 TO 5
    INPUT #1, nam(i)
NEXT i
c = 0
try(1)
SLEEP
END

SUB try (i AS INTEGER) '{判断第 I 个学生分得书的编号}
FOR j = 1 TO 5
    IF f(j) = 0 AND (like(i, j) > 0) THEN
        '{第j本书未选过，且第I个学生喜爱第j本书}
        f(j) = 1          '{修改已选书编号集合，加入第j本书}
        book(i) = j       '{记录第 I 个学生分得书的编号}
        s = 0
        FOR t = 1 TO 5
            s = s + f(t)
        NEXT t
        IF s = 5 THEN
            c = c + 1
            PRINT "answer"; c; ":"
            FOR k = 1 TO 5
                PRINT nam(k), CHR$(64 + book(k))
            NEXT k    '{k = 5,5 个学生都分到自己喜爱的书}
            PRINT
        ELSE
            try(i + 1) '{i<5,继续搜索下一个学生可能分到书的情况}
        END IF
        f(j) = 0  '{后退一步，以便查找下一种分配方案}
        book(i) = 0
    END IF
NEXT j
END SUB
