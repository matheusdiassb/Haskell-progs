substituir :: Int -> Int -> [Int] -> [Int]
substituir _ _ [] = []
substituir a b (i:x)
 | a == i = [b] ++ substituir a b x
 | otherwise = [i] ++ substituir a b x
