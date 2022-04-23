=begin

Write a method that returns a list of all substrings of a string that start at the beginning of the original string. The return value should be arranged in order from shortest to longest substring.

- output is an array of substrings
- each valid substring starts with the first character of the original string
- the output should be sorted by substring length (short to long)

(examples below)

DATA STRUCTURE
- an output array
- a string variable to hold substrings as they are created and built upon

ALGORITHM
- initialize empty output array
- initialize index at 0
- initialize temp string
- loop:
  - add the character at current index to the temp string (don't use <<!)
  - append temp string to output array
  - increment index by 1
  - break when index reaches the size of the input string
- return output array

=end

def leading_substrings(str)
  substrings = []
  current_substring = ''

  0.upto(str.size - 1) do |index|
    current_substring += str[index]
    substrings << current_substring
  end

  substrings
end


p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
