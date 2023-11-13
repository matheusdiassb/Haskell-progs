primo :: Int -> Bool
primo b = length (fatores b) == 2

fatores :: Int -> [Int]
fatores 0 = []
fatores n = [ i | i <- [1..n `div` 2],
                  n `mod` i == 0 ]
                  ++ [n]
