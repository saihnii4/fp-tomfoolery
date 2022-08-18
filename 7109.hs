module Main where

main = getLine >>= print . sum . filter (\x -> mod x 11 /= 0) . map read . words
