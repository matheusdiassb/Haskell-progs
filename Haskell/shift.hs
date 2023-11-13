shift :: Int -> [Int] -> [Int]
shift a x 
 | length x <= a = x
 | otherwise = listaInicial a x ++ listaFinal a x

listaInicial :: Int -> [Int] -> [Int]
listaInicial 0 x = x
listaInicial n (h:x) = listaInicial (n-1) x

listaFinal :: Int -> [Int] -> [Int]
listaFinal 0 x = []
listaFinal n (h:x) = [h] ++ listaFinal (n-1) x
