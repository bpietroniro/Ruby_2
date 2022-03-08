=begin

Write a program that prompts the user for two positive integers, and then
prints the results of the following operations on those two numbers:
addition, subtraction, product, quotient, remainder, and power.
Do not worry about validating the input.

- get user input and save
- either outsource each arithmetic operation to a method, or just do them
  inline (or maybe send to one method which could then send all the results
  back as an array? maybe more complicated than it's worth for this problem)

=end

def prompt(message)
  puts "==> #{message}"
end

prompt("Enter the first number")
x = gets.to_i
prompt("Enter the second number")
y = gets.to_i

while y == 0
  prompt("Second number must be non-zero. Re-enter the second number:")
  y = gets.to_i
end

prompt("#{x} + #{y} = #{x + y}")
prompt("#{x} - #{y} = #{x - y}")
prompt("#{x} * #{y} = #{x * y}")
prompt("#{x} / #{y} = #{x / y}")
prompt("#{x} % #{y} = #{x % y}")
prompt("#{x} ** #{y} = #{x**y}")

