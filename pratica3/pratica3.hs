trim :: String -> String
trim x
    | head x == ' ' = drop 1 x
    | last x == ' ' = drop 1 (reverse x)
    | otherwise = x


contaTokens :: String -> Int
contaTokens [] = 0
contaTokens(w:ws)
    | elem ' ' (w:ws) == False = 1
    | w == ' ' = 1 + contaTokens ws
    | otherwise = contaTokens ws


main :: IO()
main = do
    texto <- getLine
    print (contaTokens (trim texto))