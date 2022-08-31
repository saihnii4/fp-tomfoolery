module Main where

gen :: Int -> [String]
gen n = ["IOI"] >>= replicate n

main = getLine >>= putStrLn . unlines . gen . read
