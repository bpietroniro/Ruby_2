=begin

PROBLEM
Write a method that takes one argument, an array containing integers, and 
returns the average of all numbers in the array. The array will never be 
empty and thenumbers will always be positive integers. The result should 
also be an integer.

This method will therefore use floor division.

EXAMPLES
puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

DATA STRUCTURE
Nothing fancy. We get an array as input, we'll process it into an int,
we'll do more stuff to that and then return it.

ALGORITHM
There's almost definitely a one-liner in here, but first the hard way:
- initialize sum to 0
- loop through the array, adding each value to sum
- define average = sum / array.size
- return average

=end

def average(int_array)
  sum = 0
  int_array.each { |num| sum += num }
  average = sum / int_array.size
  average
end

def float_average(int_array)
  sum = int_array.reduce(:+)
  average = sum.to_f / int_array.size
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

puts float_average([1, 6]) == 3.5
puts float_average([1, 5, 87, 45, 8, 8]) == 154.0 / 6.0
puts float_average([9, 47, 23, 95, 16, 52]) == 242.0 / 6.0

