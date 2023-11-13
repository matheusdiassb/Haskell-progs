somaParciais:: [Int] -> [Int]
somaParciais(a:[]) = [a]
somaParciais([]) = [0]

somaParciais(a:(b:x)) = [a] ++ somaParciais ([a+b] ++ x)
