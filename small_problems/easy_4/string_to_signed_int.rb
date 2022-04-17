require 'pry-byebug'

=begin

PROBLEM
Write a method that takes a String of digits, and returns the appropriate
number as an integer. The String may have a leading + or - sign; if the
first character is a + , the method should return a positive number; if it
is a - , your method should return a negative number. If no sign is given,
you should return a positive number.

You can assume the string will always contain a valid number. You may not
use String#to_i, Integer(), or any other standard conversion methods.

(examples below)

ALGORITHM
- initialize a variable "sign" with value 1
- if the first character of the input string is not a number,
  - if this character is "-", assign the value -1 to sign (otherwise do
    nothing)
- proceed as in the last exercise with converting the string to an int
- return result of the previous operation multiplied by sign
=end

# my first solution
def string_to_signed_integer(numstr)
  sign = 1
  if numstr[0] == "+"
    numstr.delete_prefix!('+')
  elsif numstr[0] == "-"
    sign = -1
    numstr.delete_prefix!('-')
  end

  sign * string_to_integer(numstr)
end

def string_to_integer(numstr)
  output = 0
  numstr.chars.reverse.each_with_index do |char, power|
    output += (char.ord - 48) * 10**power
  end
  output
end

# Launch School's solution
def string_to_signed_integer_II(numstr)
  case numstr[0]
  when '-' then -string_to_integer(numstr[1..-1])
  when '+' then string_to_integer(numstr[1..-1])
  else string_to_integer(numstr)
  end
end

# further exploration
def stsi_refactored(numstr)
  sliced = case numstr[0]
           when '-','+' then numstr[1..-1]
           else numstr
           end
  case numstr[0]
  when '-' then -string_to_integer(sliced)
  else string_to_integer(sliced)
  end
end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100

puts string_to_signed_integer_II('4321') == 4321
puts string_to_signed_integer_II('-570') == -570
puts string_to_signed_integer_II('+100') == 100

puts stsi_refactored('4321') == 4321
puts stsi_refactored('-570') == -570
puts stsi_refactored('+100') == 100
