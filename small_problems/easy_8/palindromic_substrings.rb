=begin

PROBLEM
Write a method that returns a list of all substrings of a string that are palindromic. That is, each substring must consist of the same sequence of characters forwards as it does backwards. The return value should be arranged in the same sequence as the substrings appear in the string. Duplicate palindromes should be included multiple times.

You may (and should) use the `substrings` method from the previous exercise.

For the purposes of this exercise, you should consider all characters and pay attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. In addition, assume that single characters are not palindromes.

(examples below)

GENERAL IDEA
- call `substrings` on the input string and store the return array
- perform selection on the substrings array:
  - select the current element if it is a palindrome (that is, if it matches itself reversed)

ALGORITHM
- initialize a new array with the value of the return of `substrings` called with the input string as an argument
- create a new empty array
- iterate through the substrings array
  - if the current substring matches itself reversed, add it to the new array
- return the new array

=end

def palindromes(string)
  all_substrings = substrings(string)
  all_substrings.select do |substring|
    substring == substring.reverse && substring.length > 1
  end
end

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

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
