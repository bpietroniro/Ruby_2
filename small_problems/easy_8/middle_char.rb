=begin

PROBLEM
Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. If the argument has an odd length, you should return exactly one character. If the argument has an even length, you should return exactly two characters.

(examples below)

IDEAS
- when the length of the string is odd, the middle index is length / 2
- when the length of the string is even, the middle two indices are length / 2 and one above

ALGORITHM
- if input length is odd, return the character at index length / 2
- otherwise return a slice of the input string that's two characters long starting at index length / 2 - 1

=end

def center_of(string)
  length = string.length
  length.odd? ? string[length / 2] : string[length / 2 - 1, 2]
end


p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
