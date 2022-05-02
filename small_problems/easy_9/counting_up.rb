=begin

PROBLEM
Write a method that takes an integer argument, and returns an Array of all integers, in sequence, between 1 and the argument.

You may assume that the argument will always be a valid integer that is greater than 0.

(examples below)

=end

def sequence(num)
  (1..num).to_a
end

def sequence_2(num)
  result = []
  num.times { |n| result << n + 1 }
  result
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
p sequence_2(5) == [1, 2, 3, 4, 5]
p sequence_2(3) == [1, 2, 3]
p sequence_2(1) == [1]
