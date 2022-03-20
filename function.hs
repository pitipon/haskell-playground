inc :: Integer -> Integer
inc x = x + 1


length' :: [a] -> Integer
length' [] = 0
length' (x:xs) = 1 + length' xs

head' :: [a] -> a
head' (x:xs) = x

tail' :: [a] -> [a]
tail' (x:xs) = xs