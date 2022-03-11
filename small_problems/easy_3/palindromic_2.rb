=begin

PROBLEM
Write a method that returns true if the string passed as an argument is a
palindrome, false otherwise. The method should be CASE-INSENSITIVE, and it
should ignore all non-alphanumeric characters.

input: string
output: boolean

(examples below)

ALGORITHM
- convert the input string to all lowercase
- remove all non-alphanumeric characters from the string
  - find a method or use ASCII numbers
- initalize a new string as the reverse of the modified input string
- compare the modified input string with its reverse

=end

def real_palindrome?(string)
  acceptable_chars = '1234567890abcdefghijklmnopqrstuvwxyz'
  modified_string = ''
  
  string.downcase.each_char do |char|
    modified_string << char if acceptable_chars.include?(char)
  end

  modified_string == modified_string.reverse
end

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false
