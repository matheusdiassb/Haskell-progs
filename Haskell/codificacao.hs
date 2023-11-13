isDigit :: Char -> Bool
isDigit c = c >= '0' && c <= '9'

int2str :: Int -> String
int2str i = show i

str2int :: String -> Int
str2int s = read s

contar_elemento :: Char -> String -> Int
contar_elemento _ [] = 1
contar_elemento a (b:x)
 | a == b = 1 + contar_elemento a x
 | otherwise = 1

ajustar_ponteiro :: Char -> String -> String
ajustar_ponteiro _ "" = ""
ajustar_ponteiro a (b:x)
 | a == b = ajustar_ponteiro a x
 | otherwise = (b:x)

codificar :: String -> String    -- codificar
codificar "" = ""
codificar (a:x) = int2str (contar_elemento a x) ++ [a] ++ codificar (ajustar_ponteiro a x)

repetir :: Int -> Char -> String 
repetir 0 _ = ""
repetir n a = [a] ++ repetir (n-1) a

decodificarAux :: String -> String -> String
decodificarAux _ "" = ""
decodificarAux n (a:x)
 | isDigit a = decodificarAux (n++[a]) x
 | otherwise = repetir (str2int n) a ++ decodificarAux "" x

decodificar :: String -> String
decodificar s = decodificarAux [] s
 
