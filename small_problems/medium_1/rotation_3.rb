=begin

PROBLEM
If you take a number like 735291, and rotate it to the left, you get 352917. If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175. Keep the first 2 digits fixed in place and rotate again to 321759. Keep the first 3 digits fixed in place and rotate again to get 321597. Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. The resulting number is called the maximum rotation of the original number.

Write a method that takes an integer as argument, and returns the maximum rotation of that argument. You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

Note that you do not have to handle multiple 0s.

(examples below)

ALGORITHM
- initialize `rotation_index` variable at 1
- initialize `current_value` with the value of the input number
- loop:
  - call rotate_rightmost_digits on current_value and rotation_index
  - assign the result to current_value
  - increment rotation_index by 1
  - break when rotation_index reaches the length of the input number
- return current_value

=end

# NOTES TO SELF:
# downto takes a block itself, you don't need to call each on it
# you originally gave downto an arg of 1, but it's unnecessary to go past 2
# you originally reassigned the value of num to a new variable, but this was unnecessary

def max_rotation(num)
  num.to_s.length.downto(2) do |rotation_index|
    num = rotate_rightmost_digits(num, rotation_index)
  end
  num
end

def rotate_array(arr)
  arr[1..] << arr[0]
end

def rotate_rightmost_digits(number, n)
  digits = number.to_s.chars
  rotated_slice = rotate_array(digits[-n..])
  result = digits[0...-n] + rotated_slice
  result.join.to_i
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
