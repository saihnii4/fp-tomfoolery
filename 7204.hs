module Main where

solve :: Int -> Int
solve n = sum [1..n]

main = getLine >>= print . solve . read
