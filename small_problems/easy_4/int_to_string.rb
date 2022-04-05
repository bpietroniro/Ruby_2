require 'pry-byebug'

=begin

PROBLEM
Write a method that takes a positive integer or zero converts it to a
string representation. Don't use any of the standard conversion methods
available in Ruby, such as Integer#to_s, String(), Kernel#format, etc.
Your method should do this the old-fashioned way and construct the string
by analyzing and manipulating the number.

(examples below)

DATA STRUCTURE
We'll need an output string. It may help to build this first as an array,
so that we can use array methods on the digits conveniently.

ALGORITHM
- initialize empty array
- until num == 0
  - extract each digit from the input number with the formula num % 10
  - get the ASCII number of the current digit
  - append the character corresponding to that ASCII number to the output
  - num = num / 10
- reverse the array
- return string version of the reversed array

=end

def integer_to_string(num)
  digits = []
  loop do
    current_digit = num % 10 + 48
    digits.unshift(current_digit.chr)
    num /= 10
    break if num == 0
  end
  digits.join('')
end

puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'
