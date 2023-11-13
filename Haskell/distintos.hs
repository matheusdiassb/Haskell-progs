existe :: Int -> [Int] -> Bool
existe _ [] = False
existe a (i:x) 
 | a == i = True
 | otherwise = existe a x

distintos :: [Int] -> Bool
distintos [] = True
distintos (a:x)
 | existe a x = False
 | otherwise = distintos x
