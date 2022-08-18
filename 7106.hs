module Main where

solve :: [Int] -> Int
solve = product . filter (<5)

main = getLine >>= print . solve . map read . words

