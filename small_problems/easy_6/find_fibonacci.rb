=begin

PROBLEM
Write a method that calculates and returns the index of the first Fibonacci number that has  the number of digits specified as an argument.

(examples below)

N.B. it seems indexes start from 1, not 0.

IDEAS
If an integer has n digits, that means it is greater than or equal to 10**(n-1) (but less than 10**n).
- this will be our break condition
- find Fibonacci numbers until we find one that is at least 10**(n-1)

How to generate Fibonacci numbers?
- one idea (probably not the best, but should work) is to start with the array [1, 1] and repeatedly append elements by summing the elements at indices -1 and -2

Okay, let's give this a try.

ALGORITHM
- initialize `fibs` with the value [1, 1]
- until fibs.last >= 10**(length-1):
  - append fibs[-1] + fibs[-2] to fibs
- return fibs.length

OR...

- initialize index = 2
- initialize penultimate, last = 1, 1
- until last >= 10**(length - 1):
  - new = penultimate + last
  - penultimate, last = last, new
  - counter += 1
=end

# this is fine but inefficient for large numbers
=begin
def find_fibonacci_index_by_length(num_of_digits)
  fibs = [1, 1]
  until fibs.last >= 10**(num_of_digits - 1)
    fibs << fibs[-1] + fibs[-2]
  end
  fibs.length
end
=end

def find_fibonacci_index_by_length(num_of_digits)
  index = 2
  penultimate, last = 1, 1
  
  until last >= 10**(num_of_digits - 1)
    newest = penultimate + last
    penultimate, last = last, newest
    index += 1
  end
  
  index
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
