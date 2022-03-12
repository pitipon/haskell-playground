tripple x = tripple * 3
    where tripple = x * x * x

f x = (\tripple -> tripple * 3) (x * x * x)


sumSquareOrSquareSum x y = if sumSquare > squareSum
                           then sumSquare
                           else squareSum
    where sumSquare = x^2 + y^2
          squareSum = (x+y)^2

ss x y= (\sumSquare squareSum -> if sumSquare > squareSum
                                then sumSquare
                                else squareSum ) (x^2 + y^2) ((x+y)^2)


doubleDouble x = dubs * 2
    where dubs = x * 2


doubleDouble' x = (\dubs -> dubs * 2) (x*2)
