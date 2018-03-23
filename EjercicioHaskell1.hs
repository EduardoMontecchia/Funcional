altoNumero numero | even numero && numero > 1000000 && (rem numero 100 == 0) = "Pero mira que buen numero es el " ++ (show numero) 
                  | otherwise = "Mal ahi, " ++ (show numero) ++ " no es suficientemente copado"

altoNumero2 numero = even numero && numero > 1000000 && (rem numero 100 == 0)