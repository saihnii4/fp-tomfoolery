module Main where

solve :: Int -> [Int]
solve n = [floor $ fromIntegral n / 3600, mod 60 . floor $ fromIntegral n / 60, mod n 60]

main = getLine >>= putStrLn . unwords . map show . (solve . fromIntegral . read)

