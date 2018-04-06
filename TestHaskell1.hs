identidad x = x

siempre10 x = 10

-- doble x = 2 * x ....

grande :: Int -> Bool
grande x = x > 10000

esLindo x = even x && grande x

pipi :: Float
pipi = 3 + 0.14

agrandar x1 x2 = x1 + x2

aumentar :: Float -> Float -> Float
aumentar num porc = num * (1+porc/100)

color :: String -> String
color "frutilla" = "rojo"
color "banana" = "amarillo"
color "limon" = "amarillo"

retencion :: String -> Int
retencion "trigo" = 5
retencion "soja" = 30
retencion x = 0

doble num = 2*num
siguiente = (+) 1
dDS = doble.siguiente



encender 1 = "frio"
encender 2 = "mas o menos"
encender 3 = "calor"
encender x = "calor"

calculoTemp "frio" = 15
calculoTemp "mas o menos" = 25
calculoTemp "calor" = 35

subirTemp temp = temp + 1
bajarTemp temp = temp - 1
abrirPuerta temp = temp * 1.20
entraPersona temp = doble temp

cortocircuito x = encender 1

laManianaEnElLabo nro = (entraPersona.abrirPuerta.subirTemp.calculoTemp.encender) nro

{- *Main> (entraPersona.abrirPuerta.subirTemp.calculoTemp.encender) 1
38.4
*Main> (cortocircuito.entraPersona.abrirPuerta.subirTemp.calculoTemp.encender) 1
"frio"
*Main> 
-}

altoNumero numero | even numero && grande numero && (rem numero 100 == 0) = "Pero mira que buen numero es el " ++ (show numero) 
                  | otherwise = "Mal ahi, " ++ (show numero) ++ " no es suficientemente copado"

altoNumero2 numero = even numero && numero > 1000000 && (rem numero 100 == 0)

factorial 1 = 1
factorial x = factorial (x - 1) * x

factorialoWachin = altoNumero.factorial