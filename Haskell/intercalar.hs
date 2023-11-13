intercalar:: [Int]->[Int]->[Int]
intercalar [] a = a
intercalar a [] = a
intercalar (a:x) (b:y)
 | a <= b = [a] ++ intercalar x (b:y)
 |otherwise = [b] ++ intercalar (a:x) y
