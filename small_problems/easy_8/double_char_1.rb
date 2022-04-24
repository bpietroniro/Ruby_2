=begin

PROBLEM
Write a method that takes a string, and returns a new string in which every character is doubled.

(examples below)

ALGORITHM
- initiate empty output string
- split input string into array of chars and iterate through
  - append 2 * current char to the output string
- return the output string

=end

def repeater(string)
  doublechars = ''
  string.chars.each { |char| 2.times { doublechars << char } }
  doublechars
end


p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
