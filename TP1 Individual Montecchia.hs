 -- Ataques --

-- a. intensidadDelAtaqueDe: retorna la intensidad para un nombre en particular. La intensidad del ataque es 10 veces la longitud del nombre 

intensidadDelAtaqueDe personaje = 10*(length personaje)

-- b. esPoderoso: nos dice si un personaje es poderoso o no. Se dice que un personaje es poderoso si su intensidad supera los 70 puntos.

esPoderoso personaje = 70 < intensidadDelAtaqueDe personaje

-- c. atacaMasFuerteQue: indica si un personaje es más fuerte que otro, es decir que su intensidad es mayor.

atacaMasFuerteQue unPersonaje otroPersonaje = intensidadDelAtaqueDe unPersonaje > intensidadDelAtaqueDe otroPersonaje

 -- Entrenamientos --

-- d. refuerza: extiende el nombre del personaje para tener más fuerza de ataque. Esto se hace agregándose al final de su nombre “ REFORZADO”

refuerza personaje = personaje ++ " REFORZADO"

-- e. entrenamientoEspecial: duplica el nombre del personaje. Ej: “Pepe” -> “PepePepe”. 

entrenamientoEspecial personaje = personaje ++ personaje

-- f. convieneEntrenar: nos dice si a un personaje le conviene entrenar especialmente en vez de reforzarse.

convieneEntrenar personaje = intensidadDelAtaqueDe (entrenamientoEspecial personaje) > intensidadDelAtaqueDe (refuerza personaje)

 -- Extra --
 
{- g. Se considera una fuerza extra para cualquier personaje, por lo que a quienes tengan nombres cuyas iniciales sean con K, M o G se les aplicará a su intensidad un coeficiente.
K: 2^10
M: 2^20
G: 2^30 -}

ataqueExtra personaje | head personaje == 'K' = 2^10
                      | head personaje == 'M' = 2^20
                      | head personaje == 'G' = 2^30
                      | otherwise = 1

intensidadDelAtaqueConExtra personaje = 10*(length personaje)*ataqueExtra personaje