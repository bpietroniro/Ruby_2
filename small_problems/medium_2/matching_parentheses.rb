=begin

PROBLEM

Write a method that takes a string as an argument, and returns true if all parentheses in the string are properly balanced, false otherwise. To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

(examples below)

- the pairs of parentheses must also appear in "closed" order

IDEAS/ALGORITHM
- make a copy of the input string (this is what we'll work with)
- eliminate all non-parenthesis characters from the string
- loop:
  - if the substring '()' exists in the string, delete all instances of it
  - if not, break
- if the string is empty, return true; otherwise false

=end

def balanced?(string)
  just_parentheses = string.delete('^()')
  loop do
    just_parentheses.include?('()') ? just_parentheses.gsub!('()', '') : break
  end
  just_parentheses.empty?
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
