module Main where

solve :: [Int] -> Int
solve arr = a*b
  where (a:b:_) = arr

main = getLine >>= print . solve . map read . words 
