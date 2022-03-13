=begin

PROBLEM
Write a method that returns true if its integer argument is palindromic,
false otherwise. A palindromic number reads the same forward and backwards.

input: integer
output: boolean

(examples below)

ALGORITHM
- convert the input integer to its string representation
- compare the string representation to its reverse
(there are also arithmetic ways to do this but I'm too lazy right now)

=end

def palindromic_number?(int)
  num = int.to_s
  num == num.reverse
end

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true
