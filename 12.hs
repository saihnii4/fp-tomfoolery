module Main where

solve :: String -> Int
solve input = 60*a+b
  where (a:b:_) = map read . words $ input

main = getLine >>= print . solve
