# Scheme 
# Exercises from CSE425 book

1. Write a Scheme function that computes the volume of a sphere, given its
radius.
2. Write a Scheme function that computes the real roots of a given qua-
dratic equation. If the roots are complex, the function must display a
message indicating that. This function must use an IF function. The
three parameters to the function are the three coefficients of the qua-
dratic equation.
3. Repeat Programming Exercise 2 using a COND function, rather than an
IF function.
4. Write a Scheme function that takes two numeric parameters, A and B,
and returns A raised to the B power.
5. Write a Scheme function that returns the number of zeros in a given
simple list of numbers.
6. Write a Scheme function that takes a simple list of numbers as a
parameter and returns a list with the largest and smallest numbers in
the input list.
7. Write a Scheme function that takes a list and an atom as parameters
and returns a list identical to its parameter list except with all top-level
instances of the given atom deleted.
8. Write a Scheme function that takes a list as a parameter and returns a list
identical to the parameter except the last element has been deleted.
9. Repeat Programming Exercise 7, except that the atom can be either an
atom or a list.
Programming Exercises 725
10. Write a Scheme function that takes two atoms and a list as parameters
and returns a list identical to the parameter list except all occurrences of
the first given atom in the list are replaced with the second given atom,
no matter how deeply the first atom is nested.
11. Write a Scheme function that returns the reverse of its simple list
parameter.
12. Write a Scheme predicate function that tests for the structural equality
of two given lists. Two lists are structurally equal if they have the same
list structure, although their atoms may be different.
13. Write a Scheme function that returns the union of two simple list param-
eters that represent sets.
14. Write a Scheme function with two parameters, an atom and a list, that
returns a list identical to the parameter list except with all occurrences,
no matter how deep, of the given atom deleted. The returned list cannot
contain anything in place of the deleted atoms.
15. Write a Scheme function that takes a list as a parameter and returns a
list identical to the parameter list except with the second top-level ele-
ment removed. If the given list does not have two elements, the function
should return ().
16. Write a Scheme function that takes a simple list of numbers as its
parameter and returns a list identical to the parameter list except with
the numbers in ascending order.
17. Write a Scheme function that takes a simple list of numbers as its param-
eter and returns the largest and smallest numbers in the list.
18. Write a Scheme function that takes a simple list as its parameter and
returns a list of all permutations of the given list.
19. Write the quicksort algorithm in Scheme.
20. Rewrite the following Scheme function as a tail-recursive function:
```
(DEFINE (doit n)
(IF (= n 0)
0
(+ n (doit (− n 1)))
))
