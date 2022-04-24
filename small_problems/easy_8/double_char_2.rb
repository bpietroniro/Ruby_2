=begin

PROBLEM
Write a method that takes a string, and returns a new string in which every consonant character is doubled. Vowels, digits, punctuation, and whitespace should not be doubled.

(examples below)

IDEAS
- need to decide on a way to select only consonants
  - one way is to just hardcode a constant string that contains only consonants... but that's no fun!!
  - regex?? sure but with multiple conditionals because I don't know what I'm doing

ALGORITHM
- initialize empty output string
- split input string into chars array and iterate
  - if current char is not a letter, or if it's a vowel:
    - append char to output
  - otherwise append char twice to output
- return output

=end

def double_consonants(string)
  result = ''
  
  string.chars.each do |char|
    result << char
    if char =~ /[^aeiouAEIOU]/ && char =~ /[a-zA-Z]/
      result << char
    end
  end
  
  result
end




p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
