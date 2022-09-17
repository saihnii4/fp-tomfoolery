{- shitty descending bubble sort half-implementation in haskell -}
{- will not work if numbers require more than 1 interation of bubble sort -}
largestNum :: [Int] -> [Int]
largestNum [] = []
largestNum [x] = [x]
largestNum (x:xs)
  | head xs > x = largestNum xs ++ [x]
  | x > head xs = x : largestNum xs
  | otherwise = x : largestNum xs

main = getLine >>= putStrLn . unwords . map show . largestNum . map read . words
