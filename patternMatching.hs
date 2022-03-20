sayAmount n = case n of 
    1 -> "one"
    2 -> "two"
    n -> "other"

sayAmount' 1 = "one"
sayAmount' 2 = "two"
sayAmount' n = "other"

isEmpty [] = True
isEmpty _ = False


myHead (x:xs) = x
myHead [] = error "No head for empty list"