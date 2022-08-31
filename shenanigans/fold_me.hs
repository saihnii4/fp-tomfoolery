-- Original article that I rephrased for future reference
-- https://wiki.haskell.org/Foldr_Foldl_Foldl'

{- equivalent to 1 - 2 + 3 - 4 + 5 -}
-- main = print $ foldr (-) 0 [1, 2, 3, 4, 5]

{- stack overflow -}
-- (+) is pushed to stack for each element in the array meaning
-- that it can eaisly overflow because (+) requires it's arguments
-- be evaluated before it evaluates
-- main :: IO ()
-- main = print $ foldr (+) 0 [1 .. 10000000000000]


{-
> foldl f z []     = z
> foldl f z (x:xs) = let z' = z `f` x -- define a starting point for the next recursion
>                    in foldl f z' xs -- expression is now reducible since all of it's arguments are readily apparent

> sum2 = foldl (+) 0

> try2 = sum2 veryBigList

But we still suffer a stack overflow issue
-}
-- main :: IO ()
-- main = print $ foldl (+) 0 [1 .. 10000000000000]

-- Success!
-- seq :: a -> b -> b will reduce a before reducing b ensuring that a long chain of expressions are never evaluated
-- and hence preventing a stack overflow
foldl' f z [] = z
foldl' f z (x:xs) = let z' = z `f` x
                    in seq z' $ foldl' f z' xs

main :: IO ()
main = print $ foldl' (+) 0 [1..10000000000000]
