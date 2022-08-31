module Main where

solve :: [Int] -> Int
solve arr = b*c-d
  where (b:c:d:_) = arr

main = getLine >>= print . solve . map read . words
