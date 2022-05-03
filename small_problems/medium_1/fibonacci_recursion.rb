=begin

PROBLEM

Write a recursive method that computes the nth Fibonacci number, where nth is an argument to the method.

EXAMPLES

fibonacci(1) == 1
fibonacci(2) == 1
fibonacci(3) == 2
fibonacci(4) == 3
fibonacci(5) == 5
fibonacci(12) == 144
fibonacci(20) == 6765

DATA - just integers, with recursion

IDEAS
- for each n, we want to take the sum of (n-1) and (n-2)

ALGORITHM
- base case: return 1 if n == 1 or 2
- recursion: return fib(n-1) + fib(n-2)

=end

def fibonacci(n)
  return 1 if n <= 2 
  fibonacci(n - 1) + fibonacci(n - 2)
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
p fibonacci(0)
