module Main where

solve :: Int -> [Int]
solve n = [floor $ fromIntegral n / 12, n `mod` 12]

main = getLine >>= putStrLn . unwords . map show . solve . read
