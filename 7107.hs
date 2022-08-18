module Main where

solve :: [Int] -> Int
solve = sum . filter odd

main = getLine >>= print . solve . map read . words


