=begin

PROBLEM
Write a method that takes an integer and converts it to a string
representation. This time the integer could be positive or negative, and
your method should indicate that with a leading sign character (+ or -).

(examples below)

=end





puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'
