=begin

PROBLEM
Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.

Do not use the method Array#rotate or Array#rotate! for your implementation.

EXAMPLES
rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true

- the original array is not modified
- the old array's first element is the new array's last element 
- ignoring the first element of the old array and the last element of the new array, the two arrays are identical

DATA STRUCTURE
We're given an array, and we need to return a new array. Most likely no other structures will be needed.

ALGORITHM
- initialize a new array with the value of a slice of the old array, starting from the second element and going to the end
- append to the new array a copy of the first element of the old array
- return the new array

=end

def rotate_array(arr)
  arr[1..] << arr[0]
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true

# further exploration
def rotate_string(str)
  rotate_array(str.chars).join
end

p rotate_string('abcdef') == 'bcdefa'
p rotate_string('a') == 'a'

def rotate_integer(int)
  rotate_array(int.to_s.chars).join.to_i
end

p rotate_integer(123456) == 234561
p rotate_integer(10234) == 2341
p rotate_integer(1) == 1
