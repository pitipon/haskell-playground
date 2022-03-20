getRequestURL host apiKey resource id = host ++ "/" ++ resource ++ "/" ++ id ++ "?token=" ++ apiKey
-- getRequestURL "http://example.com" "1337ff" "book" "1234"

genHostRequestBuilder host = (\apiKey resource id -> getRequestURL host apiKey resource id)

exampleUrlBuilder = genHostRequestBuilder "http://example.com"
-- exampleUrlBuilder "1337hAsk3ll" "book" "1234"

genApiRequestBuilder hostBuilder apiKey = (\resource id -> hostBuilder apiKey resource id)

myExampleUrlBuilder = genApiRequestBuilder exampleUrlBuilder "1337hAsk311"
-- myExampleUrlBuilder "book" "1234"


------Partial function--

add4 a b c d = a + b + c + d

addXto3 x = (\b c d -> add4 x b c d)

addXYto2 x y = (\c d -> add4 x y c d)

-- *Main> mystery = add 4 2  
-- *Main> mystery 4 5

-------Apply Partial function---

exampleUrlBuilder' = getRequestURL "http://example.com"
myExampleUrlBuilder' = exampleUrlBuilder' "1337fsdfs11"
-- myExampleUrlBuilder' "book" "123"
