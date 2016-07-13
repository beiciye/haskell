compareHandurd :: (Num a, Ord a) => a -> Ordering
compareHandurd x = compare x 100

appleTwice :: (a->a)-> a -> a
appleTwice f x = f (f x)

doubleAddThree = appleTwice (+3)

zipWith' :: (a->b->c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y :zipWith' f xs ys

flip' :: (a -> b -> c) -> (b -> a -> c)
flip' f y x= f x y

-- lambda
newarr = map (+3) [1,2,3]
newarr2 = map (\x ->x+3) [1,2,3]

sum' :: (Num a) => [a] -> a
sum' = foldl (+) 0

maximum' :: (Ord a) => [a] -> a
maximum' = foldl1 (\acc x -> max x acc)

reverse' :: [a] -> [a]
reverse' = foldl(\acc x->x:acc) []

filter' :: (a->Bool) -> [a] -> [a]
filter' p = foldr (\x acc-> if p x then x:acc else acc) []


newnum = map (\x -> negate (abs x)) [2,-3,5,-29]
newnum1 = map (negate . abs) [2,-3,5,-29]

