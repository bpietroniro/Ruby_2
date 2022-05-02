=begin

PROBLEM
Write a method that can rotate the last n digits of a number.

(examples below)

Note that rotating just 1 digit results in the original number being returned.

You may use the rotate_array method from the previous exercise if you want. (Recommended!)

You may assume that n is always a positive integer.

ALGORITHM
- convert the input number to a string and split into an array of chars
- take a slice of this char array starting at index -n
- call rotate_array on the slice
- concatenate the array from 0 to -n with the result of rotate_array
- return this concatenation

=end

def rotate_array(arr)
  arr[1..] << arr[0]
end

def rotate_rightmost_digits(number, n)
  digits = number.to_s.chars
  rotated_slice = rotate_array(digits[-n..])
  result = digits[0...-n] + rotated_slice
  result.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
