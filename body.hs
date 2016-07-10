doubleMe x = x + x
doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100
                        then x
                        else x * 2


arr = [1,2,3,4,5]
nums = [1,2,3,4,5]
alphata = [11,22,33,44,55]

addThree :: Int -> Int -> Int -> Int
addThree x y z =x + y + z

sayMe :: (Integral a) => a -> String
sayMe 1 = "one"
sayMe 2 = "two"
sayMe 3 = "thee"
sayMe x = "not between 1 -3"

factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n-1)


addVectors :: (Num a) => (a,a) -> (a,a) -> (a,a)
addVectors a b = (fst a + fst b,snd a + snd b)

head' :: [a] ->a
head' (x:_) = x

