=begin

PROBLEM
Create a method that takes two integers as arguments. The first argument is a count, and the second is the first number of a sequence that your method will create. The method should return an Array that contains the same number of elements as the count argument, while the values of each element will be multiples of the starting number.

You may assume that the count argument will always have a value of 0 or greater, while the starting number can be any integer value. If the count is 0, an empty list should be returned.

(examples below)

DATA STRUCTURE
We'll return an array. We might also iterate over a range.

ALGORITHM
(call the first argument `count`, the second `num`
- initialize output array
- iterate over the integers from 1 through `count
  - append `num` * the current integer to the output array
- return output array

=end

def sequence(count, num)
  (1..count).each_with_object([]) { |multiplier, output| output << num * multiplier }
end

def sequence_2(count, num)
  (1..count).map { |multiplier| num * multiplier }
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == [] 
p sequence_2(5, 1) == [1, 2, 3, 4, 5]
p sequence_2(4, -7) == [-7, -14, -21, -28]
p sequence_2(3, 0) == [0, 0, 0]
p sequence_2(0, 1000000) == [] 
