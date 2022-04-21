=begin

PROBLEM
Write a method that takes an Array, and returns a new Array with the elements of the original list in reverse order. Do not modify the original list.

(examples below)

Sorry, I know I should've used PEDAC for this, but I had an idea and just wanted to go with it.

Here's what it amounts to:
ALGORITHM (in retrospect)
- create a new array
- iterate over the indices of the input array
  - for each index, find the element of the input array that's the equivalent to the current index, but working backwards from the end of the array (i.e. instead of index 0, we go to index -1)
  - populate the new array with element just found
- return the new array

=end

def reverse(arr)
  arr.each_index.map { |index| arr[-(index + 1)] }
end



p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true
