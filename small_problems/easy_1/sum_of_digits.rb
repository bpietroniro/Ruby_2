=begin

PROBLEM
Write a method that takes one argument, a positive integer, and returns the
sum of its digits.

EXAMPLES
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

DATA STRUCTURE
If we convert the input into a string, we might be able to treat it like an
array and map it to an array of ints, then use Array#sum.

We'll return an integer.

ALGORITHM
- change the input integer into a string
- change the string into an array of characters
- map this array to an array of integers
- sum this array and return

=end

def sum(integer)
  digits = integer.to_s.chars.map { |c| c.to_i }
  digits.reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
