=begin

PROBLEM
Write a method that takes a String of digits, and returns the appropriate
number as an integer. Do not use String#to_i or Integer().

For now, don't worry about leading + or - signs or invalid characters;
assume all characters will be numeric.

(examples below)

The examples given don't specify this, but I'm going to assume we do need to
deal with leading zeroes, because why not.

ALGORITHM
- initialize an integer representing a power of 10 to the value 0
- initialize an output variable to 0
- iterate through the input string from right to left
  - add the ordinal number of the current character, minus 48, multiplied
    by 10 to the current "power" value  
  - increment power by 1
- return the output integer
=end

def string_to_integer(numstr)
  output = 0
  numstr.chars.reverse.each_with_index do |char, power|
    output += (char.ord - 48) * 10**power
  end
  output
end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570
puts string_to_integer('') == 0
puts string_to_integer('0004065') == 4065
