=begin

PROBLEM
Write a method that returns true if the string passed as an argument is a
palindrome, false otherwise. A palindrome reads the same forward and
backward. For this exercise, case matters as does punctuation and spaces.

input: string
output: boolean

(see examples below)

ALGORITHM
- initialize a new string to hold the inputs string value reversed
- reverse the input string and store the result in the new variable
- compare the two strings
  - if they're the same string value, return true
  - otherwise return false

=end

def palindrome?(thing)
  thing == thing.reverse
end

# OR

# def palindrome?(str)
#   reversed_str = ''
#   for char in str.chars
#     reversed_str = char + reversed_str
#   end
#   reversed_str == str
# end

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true

puts palindrome?(['1', '0', '2', '0', '1']) == true
