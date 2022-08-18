module Main where

main = getLine >>= print . sum . map (read . (:[]))
