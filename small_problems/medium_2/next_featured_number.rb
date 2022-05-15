=begin

A featured number (something unique to this exercise) is an odd number that is a multiple of 7, and whose digits occur exactly once each. So, for example, 49 is a featured number, but 98 is not (it is not odd), 97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

PROBLEM
Write a method that takes a single integer as an argument, and returns the next featured number that is greater than the argument. Return an error message if there is no next featured number.

(examples below)

"featured numbers":
- are multiples of 7
- are odd
- have no repeated digits

ALGORITHM
- if input number is a multiple of 7,
  - loop:
    - add 7 to input number
    - return the result if it is odd and its digits are unique
- else if the number is odd.
  - loop
    - add 2 to input number
    - return result if it's divisible by 7 and its digits are unique
- else (could just do this from the beginning)
  - loop:
    - increment input number by 1
    - return the result if it is odd, its digits are unique, and it's divisible by 7
=end

def featured(num)
  if num % 7 == 0
    loop do
      num += 7
      return num if num.odd? && no_repeat_digits?(num)
    end
  elsif num.odd?
    loop do
      num += 2
      return num if num % 7 == 0 && no_repeat_digits?(num)
    end
  else
    loop do
      num += 1
      return num if num.odd? && (num % 7 == 0) && no_repeat_digits?(num)
    end
  end
end

def no_repeat_digits?(n)
  n.to_s.chars.sort == n.to_s.chars.sort.uniq
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

# p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
