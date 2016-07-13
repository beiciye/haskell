f :: (Integral a) => a -> a
f 0 = 0
f 1 = 1
f a = f (a-1) + f(a-2)
-- what's the difference?
{-
    f :: (Integral a) => a -> a
    f a
     | a= 0 =0
     | a= 1 =1
     | otherwise = f (a-1) + f(a-2)
    -}



maximum' :: (Ord a) => [a] -> a
maximum' [] = error "empty"
maximum' [x] = x
maximum' (x:xs) =max x $ maximum' xs


replicate' :: (Integral a, Ord a) => a -> b -> [b]
replicate' a b
        | a <=0 = []
        | otherwise = b : replicate' (a-1) b

reverse' :: [a] -> [a]
reverse' [] =[]
reverse' (x:xs) = reverse' xs ++ [x]

take' :: (Integral a,Ord a) => a -> [b] -> [b]
take' _ [] =[]
take' n (x:xs)
    | n <=0 = []
    | otherwise = x:take' (n-1) xs

repeat' :: a -> [a]
repeat' a = a :repeat' a

zip' :: [a] -> [b] -> [(a,b)]
zip' [] _ =[]
zip' _ [] =[]
zip' (x:xs) (y:ys) = (x,y):zip' xs ys

elem' :: (Eq a) => a -> [a] -> Bool
elem' _ [] = False
elem' a (x:xs)
    | a == x    = True
    | otherwise = elem' a xs

quicksort ::(Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
    let smallerSorted = quicksort [a |a <-xs,a<=x]
        bigerSorted = quicksort [a |a<-xs,a>x]
    in smallerSorted ++ [x] ++ bigerSorted
