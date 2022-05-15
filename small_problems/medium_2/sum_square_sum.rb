=begin

Write a method that computes the difference between the square of the sum of the first n positive integers and the sum of the squares of the first n positive integers.

(examples below)

ALGORITHM
- create an array of the numbers from 1 to n
- calculate square of sum:
  - sum the num array
  - square the result
- calculate sum of squares:
  - create a new array containing the squares of each element in the num array
  - sum the elements in this array
- return square_of_sum - sum_of_squares

=end

def sum_square_difference(n)
  nums = (1..n).to_a
  square_of_sum = (nums.reduce(:+))**2
  sum_of_squares = nums.map { |num| num**2 }.reduce(:+)
  square_of_sum - sum_of_squares
end

p sum_square_difference(3) == 22
    # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150



# recreating the official solution
def sum_square_diff(n)
  sum = 0
  squares_sum = 0

  1.upto(n) do |num|
    sum += num
    squares_sum += num**2
  end

  sum**2 - squares_sum
end

p sum_square_diff(3) == 22
    # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_diff(10) == 2640
p sum_square_diff(1) == 0
