--------------------------------------------------------------
--------------------------------------------------------------
-- FCEyN (UBA) - Ciencias Matemáticas (Mathematical Sciences) 
-- Taller de Algebra I - 1c2014
-- TP Nº1
-- Author: Nicolás Carusso
-- Author's email: ncarusso at gmail dot com
-- Date: 19/06/2014
--------------------------------------------------------------
--------------------------------------------------------------
--
--
--
------------------------------------------------------------------------------------------------------------------------------------
--Función/Function Factorizar
-------------------------------
--Descripción: Dado un número entero n, devuelve lo siguiente
--				si { n < 1 = error
--				   { n = 0 = Lista Vacía
--				   { n >= 1 = Lista de tuplas estructuradas de la forma [(p1,k1), (p2,k2),..,(pm,km)] 
--
--Description: Given a postive integer n, it returns the following	
--				if { n < 1 = error
--				   { n = 0 = Empty List
--				   { n >= 1 = List of tuples arranged as follows [(p1,k1), (p2,k2),..,(pm,km)] 
------------------------------------------------------------------------------------------------------------------------------------
--

factorizar :: Integer -> [(Integer,Integer)]
factorizar n | n <  1    = error "*** Exception: Negative number: ..."
			 | n == 1    = [] 
			 | otherwise = eliminarTuplasRepetidas (armarListaDeTuplas n)


--Recibe un entero positivo n y genera una lista de tuplas, usando la función de orden superior "zip" (constructura de tuplas)
--de la forma [(factorPrimoX, cantidadInstanciasFactorPimoX)] 
--It receives a positive integer n and, by using the "zip" higher order function, it generates a list of tuples arranged as follows 
--[(primeFactorX, amountOfInstancesOfPrimeFactorX)] 
armarListaDeTuplas :: Integer -> [(Integer,Integer)]
armarListaDeTuplas n = zip (generarListaDeFactoresPrimos n) (armarListaDeInstanciasDe (generarListaDeFactoresPrimos n)) 


--Recibe la lista con los factores primos de n y devuelve una lista con la cantidad de veces (instancias) que se repite cada factor
--It receives the list of n prime factors and returns a list with the amount of instances of every prime factor.
armarListaDeInstanciasDe :: [Integer] -> [Integer]
armarListaDeInstanciasDe [] = []
armarListaDeInstanciasDe listaDeFactoresPrimos = (map (instanciasDe (listaDeFactoresPrimos)) (listaDeFactoresPrimos))


--Recibe un entero positivo n y devuelve la lista de factores primos que lo componen eliminando aquellos primos no múltiplos de n
--It receives a positive integer n and returns the list of its prime factors without the ones that are not n multiples.
generarListaDeFactoresPrimos :: Integer -> [Integer]
generarListaDeFactoresPrimos n = eliminarPrimosNoMultiplosDe n (criba n)

eliminarPrimosNoMultiplosDe :: Integer -> [Integer] -> [Integer]
eliminarPrimosNoMultiplosDe _ [] = []
eliminarPrimosNoMultiplosDe n (x:xs) | mod n x == 0 = x:(eliminarPrimosNoMultiplosDe (div n x) (x:xs))
				 					 | otherwise = eliminarPrimosNoMultiplosDe n xs


--Recibe una lista y un entero positivo y cuenta la cantidad de veces que está el elemento en esa lista
--It receives a list and a positive integer and counts the amount of times that the integer appears in the list.
instanciasDe :: [Integer] -> Integer-> Integer
instanciasDe [] x = 0
instanciasDe (y:ys) x | x==y = 1+(instanciasDe ys x)
		           	  | otherwise = instanciasDe ys x


--Recibe una lista de tuplas y devuelve la misma lista eliminando las tuplas repetidas
--It receives a list of tuples and returns the same list without the repeated ones.
eliminarTuplasRepetidas :: [(Integer,Integer)] -> [(Integer,Integer)]
eliminarTuplasRepetidas [] = []
eliminarTuplasRepetidas (x:xs) | elem x xs = eliminarTuplasRepetidas xs
							   | otherwise = x:(eliminarTuplasRepetidas xs)

----------------------------------------------------------------------------------------------------------------------------------
--Criba/Sieve
----------------------
--Descripción: Dado un entero postivo n, criba (de Eratóstenes) devuelve una lista con todos aquellos números primos 
--menores que el número n

--Descripcion: Given a positive integer, sieve (of Eratosthenes) returns a list with all the prime numbers less than n 
----------------------------------------------------------------------------------------------------------------------------------
criba :: Integer -> [Integer]
criba n = obtenerPrimosMenoresQue n (unoAEne n)
--
---------------------------------------------------------------------------------------------------------------------------------
--unoAEne & emeAne
---------------------------------------------------------------------------------------------------------------------------------
--Descripción: Dado un entero positivo, unoAEne genera la lista de enteros que va desde 2 hasta n (para ser usada en la criba)
--
--Description: Given a positive integer, unoAEne generates a list with all the integers from 2 to n (the list feeds the sieve)

unoAEne :: Integer -> [Integer]
unoAEne n = emeAEne 2 n

emeAEne :: Integer -> Integer -> [Integer]
emeAEne m n | m > n = []
emeAEne m n | m <= n = m:(emeAEne (m+1) n)


----------------------------------------------------------------------------------------------------------------------------------
--obtenerPrimosMenoresQue 
----------------------------------------------------------------------------------------------------------------------------------
--Descripción: Está función es el núcleo de la criba de Eratóstenes
--Description: This function is the core of the sieve of Eratosthenes
----------------------------------------------------------------------------------------------------------------------------------
obtenerPrimosMenoresQue :: Integer -> [Integer] -> [Integer]
obtenerPrimosMenoresQue _ [] = [] 
obtenerPrimosMenoresQue n (x:xs) | x^2 < n = x:(obtenerPrimosMenoresQue n (eliminarMultiplosDe x xs))
								 | otherwise = (x:xs) 


eliminarMultiplosDe :: Integer -> [Integer] -> [Integer]
eliminarMultiplosDe _ [] = []
eliminarMultiplosDe x (l:ls) | esDivisor l x = eliminarMultiplosDe x ls
							 | otherwise = l:(eliminarMultiplosDe x ls) 


--Dados dos enteros positivos devuelve True si el segundo elemento es divisor del primero
--Given two positive integers it returns True if mod firstElement secElement is 0 
esDivisor :: Integer -> Integer -> Bool
esDivisor n x = mod n x == 0

---------------------------------------------------------------------------------------------------------------------------------
--Bonus Function
-------------------
esPrimo :: Integer -> Bool
esPrimo n = length (factorizar n)==1