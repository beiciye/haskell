compareHandurd :: (Num a, Ord a) => a -> Ordering
compareHandurd x = compare x 100

appleTwice :: (a->a)-> a -> a
appleTwice f x = f (f x)

doubleAddThree = appleTwice (+3)

zipWith' :: (a->b->c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y :zipWith' f xs ys
