
ifEvenInc n = if even n
              then n + 1
              else n

ifEvenDouble n = if even n
                 then n*2
                 else n

ifEvenSquare n = if even n
                 then n^2
                 else n

ifEven myFunction x = if even x
                then myFunction x
                else x

inc = (\n->n+1)
double = (\n->n*2)
square = (\n->n^2)

genIfEven f = (\x -> ifEven f x)
genIfEven' = (\f -> (\x -> ifEven f x))

inc :: Integer -> Integer
inc x = x + 1


length' :: [a] -> Integer
length' [] = 0
length' (x:xs) = 1 + length' xs

head' :: [a] -> a
head' (x:xs) = x

tail' :: [a] -> [a]
tail' (x:xs) = xs
