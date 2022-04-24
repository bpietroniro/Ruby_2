=begin

Write a method that returns a list of all substrings of a string. The returned list should be ordered by where in the string the substring begins. This means that all substrings that start at position 0 should come first, then all substrings that start at position 1, and so on. Since multiple substrings will occur at each position, the substrings at a given position should be returned in order from shortest to longest.

You may (and should) use your `leading_substrings` method from the previous exercise.

(examples below)

GENERAL IDEA
- call `leading_substrings` on each string obtained by slicing `n` characters off the beginning of the original string (where `n` ranges from 0 to str.length - 2)
- append the results of these calls to an output array

ALGORITHM
- initialize output array
- initialize start index at 0
- loop:
  - call leading_substrings on the substring of the input starting from index to the end
  - concatenate the method's return array to the output array
  - increment index by 1
- return output array

=end

def substrings(string)
  (0...string.size).each_with_object([]) do |start_index, all_substrings|
    all_substrings.concat(leading_substrings(string[start_index..]))
  end
end

def leading_substrings(str)
  substrings = []
  current_substring = ''

  0.upto(str.size - 1) do |index|
    current_substring += str[index]
    substrings << current_substring
  end

  substrings
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
