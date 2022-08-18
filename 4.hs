module Main where

solve :: [Int] -> [Int]
solve input = [a*b, 2*a+2*b]
  where (a:b:_) = input

main :: IO ()
main = getLine >>= putStrLn . unwords . map show . solve . map read .  words 
