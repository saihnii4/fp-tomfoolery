module Main where

main :: IO ()
main = getLine >>= putStrLn . (tail . take 2 . reverse)
