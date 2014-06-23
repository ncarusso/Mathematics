<h1>Mathematics </h1>

I will collect the solution of different mathematical problems addressed in a variety of programming languages. 

<h4>Factorization</h4>
This is a problem proposed for undergraduated students of Mathematical Sciences at the University of Buenos Aires (FCEyN UBA). 
The problem has to be solved in the haskell programming language. Haskell is a purely funcional programming language, that is specially suitable for mathematical purposes.
In brief, it stats the the following

scribir una funcion factorizar :: Integer -> [(Integer,Integer)] que
tome como parametro un entero n  1 y que retorne una lista representando la factorizacion
de n. Formalmente, se debe retornar una lista de enteros [(p1; k1); (p2; k2); : : : ; (pm; km)] tal
que:

1. p1; p2; : : : ; pm y k1; k2; : : : ; km son enteros positivos.
2. p1; p2; : : : ; pm son primos.
3. p1 < p2 <    < pm.
4. pk1
1  pk2
2      pkm
m = n.
Para el valor 1, ya que no tiene divisores primos, la respuesta es la lista vaca.
1

Ejemplos del uso de la funcion factorizar:
Escribiendo en la consola Debe retornar
factorizar 6 [(2,1),(3,1)]
factorizar 7 [(7,1)]
factorizar 81 [(3,4)]
factorizar 1176 [(2,3),(3,1),(7,2)]
factorizar 1 []
factorizar 0 *** Exception: ...
factorizar -1 *** Exception: ...

Aclarar que no hay asignación destructiva y que todo es una función
