=begin

PROBLEM
Write a method that takes an Array of numbers and then returns the sum of the sums of each leading subsequence for that Array. You may assume that the Array always contains at least one number.

(examples below)

DATA STRUCTURE
One way would be to create a nested array containing all possible combinations of elements from the input array. (Not sure if this will be necessary, though.)
Otherwise, just a variable to store the running sum.

IDEAS
Using an incrementing index, add the sum of the first (index) elements of the array to the output until the index reaches the size of the input minus 1.

ALGORITHM
- initialize sum variable at 0
- initialize index at 0
- loop:
  - take the sum of the first (index) elements of the array
  - add this sub-sum to the total sum
  - increment index by 1
- return sum

=end

def sum_of_sums(nums)
  (0...nums.size).reduce(0) do |sum, index|
    sum + nums[0..index].reduce(:+)
  end
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
