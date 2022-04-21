=begin

PROBLEM
Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays) that contain the first half and second half of the original Array, respectively. If the original array contains an odd number of elements, the middle element should be placed in the first half Array.

(examples below)

Input: an array
Output: a nested array
Intermediate structures: possibly two arrays that will become elements of the output

- need to round up array length / 2
- the idea is to split the array based on the value of each element's index;
  - if the index is greater than (array length)/2 rounded up, it should go in the second array

=end

# this will be troublesome with repeated elements, though
def halvsies(arr)
  arr.partition { |e| arr.find_index(e) < (0.5 * arr.length).round(half: :up) }
end

def halvsies_2(arr)
  index = 0
  first_half = []
  second_half = []

  until index > arr.length / 2 - 1
    first_half << arr[index]
  end
  second_half = arr[index..]

  [first_half, second_half]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
