perfeito :: Int -> Bool
perfeito 0 = False
perfeito b = somatorio(fatores b) == b 

fatores :: Int -> [Int]
fatores 0 = []
fatores n = [ i | i <- [1..n `div` 2],
                  n `mod` i == 0 ]

somatorio :: [Int] -> Int
somatorio [] = 0
somatorio (a:x) = a + somatorio x
