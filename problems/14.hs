module Main where

solve :: String -> Int
solve input = 3600*a+60*b+c
  where (a:b:c:_) = map read . words $ input

main = getLine >>= print . solve
