--criba-De-Eratostenes-posta!
-------------------------------

criba::Integer -> [Integer]
criba n = obtenerPrimosMenoresQue n (unoAEne n)

unoAEne :: Integer -> [Integer]
unoAEne n = emeAEne 2 n

emeAEne :: Integer -> Integer -> [Integer]
emeAEne m n | m > n = []
emeAEne m n | m <= n = m:(emeAEne (m+1) n)

obtenerPrimosMenoresQue:: Integer -> [Integer] -> [Integer]
obtenerPrimosMenoresQue _ [] = []
--CON CONDICION DE CORTE 
obtenerPrimosMenoresQue n (x:xs) | x^2 < n = x:(obtenerPrimosMenoresQue n (tail (x:(eliminarMultiplosDe x xs))))
								 | otherwise = (x:xs) 
	 	  				
--SIN CONDICION DE CORTE
--obtenerPrimosMenoresQue n (x:xs) = (x:(obtenerPrimosMenoresQue n (tail (x:(eliminarMultiplosDe x xs)))))
		 
eliminarMultiplosDe::Integer -> [Integer] -> [Integer]
eliminarMultiplosDe _ [] = []
eliminarMultiplosDe x (l:ls) | esDivisor l x = eliminarMultiplosDe x ls
							 | otherwise = l:(eliminarMultiplosDe x ls) 

esDivisor::Integer -> Integer ->Bool
esDivisor n x = mod n x == 0

--NOTA: Funciona bien. Pero no es eficiente. Debería ser capaz de implementar el criterio de corte que dice que x <= sqrt n. El problema es que no
--se como hacer para trabajar con el valor obtenido en sqrt (float) siendo que el resto de los valores son enteros
--5 minutos después...
--UPDATE NOTA! Ya se como implementar el sqrt! Si despejo la raíz en la condicion de corte que mencioné, x <= sqrt n, obtengo x^x <= n, fácil para implementar.
--Ahora lo que tengo que pensar es como devolver la lista obtenida hasta ese momento cuando no se cumple la condición...
--RESUELTO!!! Si comparo la eficiencia de criba con condicion vs criba sin condicion, la ejecucion de 
--criba 10000 demora 0.5 seg con condición y 8 seg sin condición. Es decir, apróximadamente 16 veces más rápido. 
