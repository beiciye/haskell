head' :: [a] -> a
head' (x:_) = x

tail' :: [a]->[a]
tail' (x:xs) = xs

take' :: (Integral m,Ord m)=>m -> [a]-> [a]
take' n _
    | n <=0 = []
take' _ [] = []
take' n (x:xs) = x : take' (n-1) xs


