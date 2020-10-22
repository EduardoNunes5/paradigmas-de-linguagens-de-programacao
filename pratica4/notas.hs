notas :: [(String, Int)]
notas = cycle ( zip ["C", "C#", "D", "D#", "E", "F", "G", "G#", "A", "A#", "B"] [0,1,2,3,4,5,6,7,8,9,10])


findIndex :: String -> [(String,Int)] -> Int
findIndex nota ((elem,key) : xs)
    | nota == elem = key
    | otherwise = findIndex nota xs


aumentaSom :: String -> Float -> String
aumentaSom nota tom
    | tom == 0 = notaAtual
    | tom == 0.5 =  proximaNota
    | otherwise = aumentaSom proximaNota (tom - 0.5)
    where
        index = findIndex nota notas
        (notaAtual,_) = notas !! index
        (proximaNota,_) = notas !! (index +1)

main :: IO()
main = do
    nota <- getLine
    tomString <- getLine
    let  tom = read tomString
    print(aumentaSom nota tom)
