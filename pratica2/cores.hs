

mistura_cores :: String -> String -> String
mistura_cores cor1 cor2
    | cor1 == amarelo && cor2 == vermelho || cor1 == vermelho && cor2 == amarelo = "laranja"
    | cor1 == amarelo && cor2 == azul || cor1 == azul && cor2 == amarelo = "verde"
    | cor1 == vermelho && cor2 == azul || cor1 == azul && cor2 == vermelho = "roxo"
    | otherwise = "Entrada inválida!"
    where
        amarelo = "amarelo"
        vermelho = "vermelho"
        azul = "azul"

cor_gerada :: String -> String
cor_gerada cor
    | cor == "roxo" = "vermelho + azul"
    | cor == "laranja" = "amarelo + vermelho"
    | cor == "verde" = "azul + amarelo"
    | otherwise = "Entrada inválida!"


main :: IO()
main = do
    tipo_operacao <- getLine
    let tipo = read tipo_operacao
    if tipo == 1 then do
        cor <- getLine
        print (cor_gerada cor)
        else if tipo == 2 then do
            primeira_cor <- getLine
            segunda_cor <- getLine
            print(mistura_cores primeira_cor segunda_cor)
            else
                print "Entrada inválida!"