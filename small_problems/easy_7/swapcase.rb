require 'pry-byebug'

=begin

Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced by its lowercase version, and every lowercase letter by its uppercase version. All other characters should be unchanged.

You may not use String#swapcase; write your own version of this method.

(examples below)

DATA STRUCTURES
- two array constants: one for the lowercase alphabet and one for the uppercase alphabet
- initialize empty string
- split input string into char array and iterate
  - determine which alphabet string the current char belongs to
  - add to the new string: the element in the OTHER alphabet string at the index the current char appears at in its own
  - if current char doesn't belong to either alphabet, simply add current char to new string
- return new string

=end

LOWERCASE = ('a'..'z').to_a
UPPERCASE = ('A'..'Z').to_a

def swapcase(string)
  string.split('').each_with_object('') do |char, new_string|
    if LOWERCASE.include?(char)
      new_string << UPPERCASE[LOWERCASE.index(char)]
    elsif UPPERCASE.include?(char)
      new_string << LOWERCASE[UPPERCASE.index(char)]
    else
      new_string << char
    end
  end  
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

