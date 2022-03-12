sumSquareOrSquareSum x y = if sumSquare > squareSum
                           then sumSquare
                           else squareSum
    where sumSquare = x^2 + y^2
          squareSum = (x+y)^2

sumSquareOrSquareSum' x y = if (x^2 + y^2) > (x+y)^2
                            then (x^2 + y^2)
                            else (x+y)^2

body sumSquare squareSum = if sumSquare > squareSum
                           then sumSquare
                           else squareSum

sumSquareOrSquareSum'' x y = body (x^2 + y^2) ((x+y)^2)

body' = (\sumSquare squareSum ->
            if sumSquare > squareSum
            then sumSquare
            else squareSum)

sumSquareOrSquareSum''' x y = (\sumSquare squareSum ->
                                if sumSquare > squareSum
                                then sumSquare
                                else squareSum) (x^2 + y^2) ((x+y)^2)

sumSquareOrSquareSum'''' x y =  let sumSquare = (x^2 + y^2)
                                    squareSum = (x+y)^2
                                in
                                    if sumSquare > squareSum
                                    then sumSquare
                                    else squareSum

