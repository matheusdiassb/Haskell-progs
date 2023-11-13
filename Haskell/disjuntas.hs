existe :: Int -> [Int] -> Bool 
existe _ [] = False
existe a (i:x)
 | a == i = True
 | otherwise = existe a x

disjuntas :: [Int] -> [Int] -> Bool
disjuntas [] _ = True
disjuntas (a:x) y
 | existe a y = False
 | otherwise = disjuntas x y
