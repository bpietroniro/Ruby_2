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
- iterate through the input string from right to left

=end



puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570
