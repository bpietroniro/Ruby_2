=begin

PROBLEM
Write a method that takes an integer and converts it to a string
representation. This time the integer could be positive or negative, and
your method should indicate that with a leading sign character (+ or -).

(examples below)

DATA STRUCTURES
We'll need a string to store the output as we build it.

ALGORITHM
- initialize empty output string
- if num is 0:
  - return '0'
- if num is less than 0:
  - append '-' to output string
- else:
  - append '+' to output string
- append the return value of integer_to_string called on the absolute value of num to the output string
- return output string

=end

def signed_integer_to_string(num)
  output = ''
  return '0' if num == 0
  output << (num < 0 ? '-' : '+')
  output << integer_to_string(num.abs)
  output
end

def integer_to_string(num)
  digits = []
  loop do
    current_digit = num % 10 + 48
    digits.unshift(current_digit.chr)
    num /= 10
    break if num == 0
  end 
  digits.join('')
end




puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'
