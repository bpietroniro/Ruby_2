=begin

PROBLEM
Write a method that takes an array of strings, and returns an array of the same string values, except  with the vowels removed.

(examples below)

Input: array of strings
Output: array of strings

- vowels in uppercase and lowercase may be present in the strings
- the operation must be performed on every element in the input array

DATA STRUCTURES
probably just the two arrays for input and output

ALGORITHM
- create empty output array
- iterate through the input array
  - for each string, create a new version of it with vowels deleted
  - add this new version to output
- return output

to delete vowels:
- probably just use regex, but if not...
- create new output string
- split the string into array of chars and iterate through
  - add every non-vowel to output string
- return output string

=end

def remove_vowels(str_array)
  str_array.map do |string|
    string.delete("aeiouAEIOU")
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
