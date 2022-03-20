gcd' x y = if x `mod` y == 0
          then y
          else gcd' y (x `mod` y)

gcd'' x y = if remainder == 0
            then y
            else gcd' y remainder
    where remainder = x `mod` y

gcd''' x y 
    | remainder == 0    = y
    | remainder /= 0    = gcd''' y remainder
    where remainder = (x `mod` y)