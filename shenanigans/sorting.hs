{- shitty descending sort implementation in haskell -}
largestNum :: [Int] -> [Int]
largestNum [] = []
largestNum [x] = [x]
largestNum (x:xs)
  | head xs > x = largestNum xs ++ [x]
  | x > head xs = x : largestNum xs
  | otherwise = x : largestNum xs

main = getLine >>= putStrLn . unwords . map show . largestNum . map read . words
