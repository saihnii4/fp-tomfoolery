-- Monads

phoneBook = [("Bob", "123"), ("Jane", "456"), ("Alice", "789")]

glowBook = [("123", "Federal Agent Jeffery A. Steele")]

lookupGlow :: String -> Maybe String
lookupGlow name = lookup name phoneBook >>= (`lookup` glowBook)

result :: Maybe String -> String
result m = case m of
  Nothing -> "Your pal is not a fed"
  Just x -> "Your pal " ++ x ++ " is a fed"

main :: IO ()
main = getLine >>= putStrLn . result . lookupGlow
