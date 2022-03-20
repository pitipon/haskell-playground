f x = elem x [1,2,3]

f2 x = '!' `elem` x
--- f2 "hello!"

respond phrase = if '!' `elem` phrase
                 then "wow"
                 else "nahhhh"



assignToGroups n aList = zip groups aList
    where groups = cycle [1..n]
{-
assignToGroups 3 ["file1.txt","file2.txt","file3.txt","file4.txt","file5.txt","file6.txt","file7.txt","file8.txt"]
-}

takeLast n aList = reverse (take n (reverse aList))

subseq x y aList = drop x trimY
    where trimY = take y aList