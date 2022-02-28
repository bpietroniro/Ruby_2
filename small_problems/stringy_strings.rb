=begin

PROBLEM
Write a method that takes one argument, a positive integer, and returns
a string of alternating 1s and 0s, always starting with 1. The length of
the string should match the given integer.

EXAMPLES
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

DATA STRUCTURES
Besides the input integer, the output string, and some kind of iterator,
I don't anticipate needing any other data structure.

ALGORITHM
- initialize empty output string
- using a loop of some kind, repeat (input) times:
  - if the current iteration number (starting with 1) is odd, add '1' to
    the output string.
  - otherwise, add '0' to the output string.
- return the output string

=end

def stringy(length, start = 1)
  output = ''
  range = case start
          when 1
            (1..length)
          when 0
            (0...length)
          end
  range.each do |index|
    output += index.odd? ? '1' : '0'
  end
  output
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

puts stringy(6, 0) == '010101'
puts stringy(9, 0) == '010101010'
puts stringy(4, 0) == '0101'
puts stringy(7, 0) == '0101010'

