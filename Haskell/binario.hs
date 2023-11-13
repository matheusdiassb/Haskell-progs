binario :: Int -> [Int]
binario 0 = [0]
binario 1 = [1]
binario b =  binario (b `div` 2) ++ [b `mod` 2]
