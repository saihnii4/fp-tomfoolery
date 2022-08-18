module Main where

main = getLine >>= print . product . map (read . (:[]))
