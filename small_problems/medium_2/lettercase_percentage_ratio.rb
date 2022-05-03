=begin

Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the percentage of characters in the string that are lowercase letters, one the percentage of characters that are uppercase letters, and one the percentage of characters that are neither.

You may assume that the string will always contain at least one character.

(examples below)

input: string
output: a hash containing 3 entries: percentages of characters that are lowercase, uppercase, and neither

ALGORITHM
- initialize output hash
- count the number of lowercase letters
- count the number of uppercase letters
- count the number of "neithers"
- transform each of these counts into a percentage by
  - dividing by the size of the input string
  - multiplying by 100
  - rounding???
- store in hash

=end

def letter_percentages(string)
  ratios = {}
  lowercase_count = string.count('a-z')
  uppercase_count = string.count('A-Z')
  neither_count = string.size - lowercase_count - uppercase_count

  ratios[:lowercase] = lowercase_count * 100.0 / string.size
  ratios[:uppercase] = uppercase_count * 100.0 / string.size
  ratios[:neither] = neither_count * 100.0 / string.size

  ratios
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
