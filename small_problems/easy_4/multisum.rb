=begin

Write a method that searches for all multiples of 3 or 5 that lie between
1 and some other number, and then computes the sum of those multiples.

For instance, if the supplied number is 20, the result should be 98.
(3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20 = 98)

You may assume that the number passed in is an integer greater than 1.

1. Start from 0 and count up by 3, adding each successive integer to an
  array of multiples, until the input number is reached
2. Start again from 0 and this time count up by 5, adding each successive
  integer to a second array of multiples
3. Merge the two arrays (i.e. take their union)
4. Sum all the elements in the merged array
5. Return the sum

=end

def find_multiples(n, max)
  multiples = []
  current_integer = 0
  loop do
    current_integer += n
    break if current_integer > max
    multiples << current_integer
  end
  multiples
end


def multisum(num)
  multiples_of_three = find_multiples(3, num)
  multiples_of_five = find_multiples(5, num)

  multiples = multiples_of_three.union(multiples_of_five)
  multiples.inject(:+)
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168
