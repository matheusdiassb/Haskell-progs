reverso :: [Int] -> [Int]
reverso [] = []
reverso (i:x) = reverso x ++ [i]

palindromo :: [Int] -> Bool
palindromo l = reverso l == l
