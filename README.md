<h1>Mathematics </h1>

I will collect the solution of different mathematical problems addressed in a variety of programming languages. 

<HR>

<h4>Factorization</h4>
This is a problem proposed for undergraduate students of Mathematical Sciences at the University of Buenos Aires (FCEyN, UBA). 
The problem has to be solved in the haskell programming language. Haskell is a purely funcional programming language, that is specially suitable for mathematical purposes. <br>

<b>Exercise</b>
Write a function factorizar :: Integer -> [(Integer,Integer)] that receives as a parameter an integer n >= 1 and returns
a list representing the factorization of n. Formally, the list has to be structured like <br>[(p<sub>1</sub>; k<sub>1</sub>), (p<sub>2</sub>, k<sub>2</sub>),...,(p<sub>m</sub>, k<sub>m</sub>)] such that

1. p<sub>1</sub>, p<sub>2</sub>, . . . , p<sub>m</sub> and k<sub>1</sub>, k<sub>2</sub>, . . . ,k<sub>m</sub> are positive integers.
2. p<sub>1</sub>, p<sub>2</sub>, . . . , p<sub>m</sub> are primes.
3. p<sub>1</sub> < p<sub>2</sub> < . . . < p<sub>m</sub>.
4. p<sub>1</sub><sup>k1</sup> x p<sub>2</sub><sup>k2</sup> x . . . x p<sub>m</sub><sup>km</sup> = n

For the value 1, the answer is an empty list, because it has no prime divisors.

Examples of the factorizar function

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
  <td>[ ]</td>
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

<h4>Solution</h4>
While the <b>Riemann Hypothesis</b> remains unsolved, there is no easy way in which we can affirm that a number is prime.
However, there are some recursive algorithms that let us deal with this situation. I have chosen the one called <b>The sieve of Eratosthenes.</b><br>

<i>References</i>
<ul>
<li><a href=http://www.claymath.org/sites/default/files/ezeta.pdf>Bernhard Riemann - On the Number of Prime Numbers less than
a Given Quantity</a> 
<li><a href=http://en.wikipedia.org/wiki/Sieve_of_Eratosthenes>Sieve of Eratosthenes</a> 
</ul>

