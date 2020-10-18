

joana_fun :: Int -> Int -> Int
joana_fun x y = (3*x)^2 + y ^2


jose_fun :: Int -> Int -> Int
jose_fun x y = 2*(x^2) + (5*y)^2

joaquina_fun :: Int -> Int -> Int
joaquina_fun  x y = -100*x + y^3

verifica :: Int -> Int -> String
verifica x y
    | joaquina > jose && joaquina > joana = "Joaquina ganhou!"
    | jose > joana = "Jose ganhou!"
    | joana > jose = "Joana ganhou!"
    | otherwise = "Ninguem ganhou!"
    where 
        joaquina = joaquina_fun x y
        jose = jose_fun x y
        joana = joana_fun x y


main :: IO()
main = do
    valor1 <- getLine
    valor2 <- getLine

    let x = read valor1
    let y = read valor2

    print(verifica x y)
