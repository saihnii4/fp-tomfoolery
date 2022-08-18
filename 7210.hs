solve :: [Int] -> [String]
solve arr = [show n ++ "^" ++ (show x ++ "=" ++ show (n ^ x)) | x <- [1 .. r]]
  where
    (n : r : _) = arr

main = getLine >>= putStrLn . unlines . solve . map read . words
