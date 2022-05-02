=begin

PROBLEM
Write a method that takes a string argument, and returns `true` if all of the alphabetic characters inside the string are uppercase, `false` otherwise. Characters that are not alphabetic should be ignored.

(examples below)

ALGORITHM
- split input string into array of chars and iterate
  - if the current char is included in the uppercase letters from A to Z
    - next
  - otherwise return false
- return true

=end

def uppercase?(str)
  str.chars.all? { |char| char =~ /[^a-z]/ }
  # also works:
  # str =~ /[a-z]/ ? false : true
end



p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
