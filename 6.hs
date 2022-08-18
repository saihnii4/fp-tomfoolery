module Main where

solve :: Int -> Int
solve n = 4*n*n - 3*n + 5

main = getLine >>= print . solve . read
