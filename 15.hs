module Main where

solve :: Int -> [Int]
solve n = [floor $ fromIntegral n / 24, mod n 24]

main = getLine >>= putStrLn . unwords . map show . solve . read
