retirar :: Int -> [Int] -> [Int]
retirar _ [] = []
retirar k (a:x)
 | k == 0 =  [a] ++ x
 | otherwise = retirar (k-1) x

reverso :: [Int] -> [Int]
reverso [] = []
reverso (i:x) = reverso x ++ [i]


removerFim :: Int -> [Int] -> [Int]
removerFim i j = reverso (retirar i (reverso j))
