=begin

PROBLEM
Write a method that takes a positive integer as an argument and returns that number with its digits reversed.

Don't worry about arguments with leading zeros - Ruby sees those as octal numbers, which will cause confusing results. For similar reasons, the return value for our fourth example doesn't have any leading zeros.

(examples below)

IDEAS
I'd like to do this by way of digit extraction.
The ones digit can be extracted by taking the input modulo 10.
Then we add the ones digit to the output, and multiply the output by 10, etc.

ALGORITHM
- initialize result at 0
- loop:
  - add input mod 10 to result
  - input /= 10
  - break if input is 0
  - multiply result by 10
- return output

input = 54321
result = 0

input % 10 = 1
result = 1

input = 5432
result = 10

input % 10 = 2
result = 12

input = 543
result = 120

input % 10 = 3
result = 123

input = 54
result = 1230

input % 10 = 4
result = 1234

input = 5
result = 12340

input % 10 = 5
result = 12345

input = 0
BREAK

=end

def reversed_number(num)
  result = 0
  loop do
    result += num % 10
    num /= 10
    break if num == 0
    result *= 10
  end
  result
end



p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1
