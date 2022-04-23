=begin

PROBLEM
Write a method that takes an Array of integers as input, multiplies all the numbers together, divides the result by the number of entries in the Array, and then prints the result rounded to 3 decimal places. Assume the array is non-empty.

(examples below)

- multiply all the numbers in the array together
- divide by the number of elements in the array
- be sure the result is a float, and print it out rounded/formatted to 3 decimal places

DATA STRUCTURE
Besides the input array, we should be able to do this with just one numeric variable.

ALGORITHM
- take the sum of all the elements
- divide the sum by the length of the input cast to float
- round to 3 decimal places
- return formatted to 3 decimal places

=end

def show_multiplicative_average(nums)
  average = (nums.inject(:*) / nums.size.to_f)
  %(The result is %.3f) % average
end

p show_multiplicative_average([3, 5])                # => The result is 7.500
p show_multiplicative_average([6])                   # => The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667
