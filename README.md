<h1>Mathematics </h1>

I will collect the solution of different mathematical problems addressed in a variety of programming languages. 

<h4>Factorization</h4>
This is a problem proposed for undergraduate students of Mathematical Sciences at the University of Buenos Aires (FCEyN UBA). 
The problem has to be solved in the haskell programming language. Haskell is a purely funcional programming language, that is specially suitable for mathematical purposes. 
In brief, the problem stats the following

Write a function factorizar:: Integer -> [(Integer,Integer)] that receives as a parameter an integer n >= 1 that returns
a list representing the factorization of n. Formaly, the list has to be structured like [(p1; k1); (p2; k2); ... ; (pm; km)] such that

1. p1; p2; . . . ; pm y k1; k2; . . . ; km are positive integers.
2. p1; p2; . . . ; pm are primes.
3. p1 < p2 < . . . < pm.
4. p1<sup>k1</sup> x p2<sup>k2</sup> x . . . x pm<sup>km</sup> = n

For the value 1, the answer is an empty list, because it has no prime divisors-

Ejemples of the factorizar function

<table>
<tr>
<td>Query in terminal</td>
  <td>Should return</td>
</tr>
<tr>
<td>factorizar 6</td>
  <td>[(2,1),(3,1)]</td>
</tr>
<tr>
<td>factorizar 7</td>
  <td>[(7,1)]</td>
</tr>
<tr>
<td>factorizar 81</td>
  <td>[(3,4)]</td>
</tr>
<tr>
<td>factorizar 1176</td>
  <td>[(2,3),(3,1),(7,2)]</td>
</tr>
<tr>
<td>factorizar 1</td>
  <td>[]</td>
</tr>
<tr>
<td>factorizar 0</td>
  <td>*** Exception: ...</td>
</tr>
<tr>
<td>factorizar -1</td>
  <td>*** Exception: ...</td>
</tr>
</table>
