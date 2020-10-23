

data Rectangle = Rectangle{
    base :: Float,
    height :: Float
}

calcula_area :: Rectangle -> Float
calcula_area (Rectangle base height) = base * height

getBase :: Rectangle -> Float
getBase (Rectangle {base=b}) = b

getAltura :: Rectangle -> Float
getAltura (Rectangle {height= h}) = h

main :: IO()
main = do
    print "Digite a base do retangulo: "
    base <- getLine

    print "Digite a altura do retangulo: "
    height <- getLine

    let b = read base
    let h = read height
    let rect = Rectangle b h
    putStr "Base: "
    print (getBase rect)
    putStr "Altura: "
    print (getAltura rect)
    putStr ("Area: ")
    print (calcula_area rect)