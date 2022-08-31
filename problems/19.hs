module Main where

solve :: [Int] -> Int
solve = sum . filter (>80)

main = getLine >>= print . solve . map read . words
