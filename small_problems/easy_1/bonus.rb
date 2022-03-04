=begin

PROBLEM
Write a method that takes two arguments, a positive integer and a boolean,
and calculates the bonus for a given salary. If the boolean is "true", the
bonus should be half of the salary. If the boolean is "false", the bonus
should be 0.

EXAMPLES
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

DATA STRUCTURE
One integer variable should do it.

ALGORITHM
- if the second argument is "true":
  - set the output to be 1/2 * the first argument
  else
  - set the output to 0  
- return the output

=end

def calculate_bonus(salary, bonus)
  bonus ? 0.5 * salary : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
