=begin 

PROBLEM
Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic characters, write a method that returns that string with all of the non-alphabetic characters replaced by spaces. If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).

DATA STRUCTURES
- split input string into array of chars
- store alphabetic substrings in an array to be joined at the end
- need temp string to build substrings during iteration

ALGORITHM
- split string into array of chars
- initialize array to store alpha substrings
- iterate through array
  - initialize empty temp string
  - if ASCII position of current char is between 97 and 122 (inclusive):
    - add current char to temp string
  - else
    - next if temp string is empty
    - (otherwise) append temp string to array
- join array and return
*** this will be problematic if the string begins with non-alpha chars!***

I could try to figure this out, or I could be lazy. Going to go with lazy for now.

INSTEAD...
- initialize output string
- iterate through chars of input string
  - if char is alpha, add it to output
  - otherwise add ' '
- iterate through output string and remove repeated spaces
- return output

=end


=begin first attempt

def cleanup(string)
  alpha_substrings = []
  string.each_char do |char|
    substring = ''
    if char =~ /[a-z]/
      substring << char
    else

    end
  end

end

=end

def cleanup(string)
  cleaned_up = ''
  
  string.each_char do |char|
    cleaned_up += (char =~ /[a-z]/) ? char : ' '
  end

  cleaned_up.squeeze(' ')
end

puts cleanup("---what's my +*& line?")
puts cleanup("---what's my +*& line?") == ' what s my line '
