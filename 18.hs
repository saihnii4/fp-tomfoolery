module Main where

solve :: [Int] -> Int
solve input = 12*a+b
  where (a:b:_) = input

main = getLine >>= print . solve . map read . words
