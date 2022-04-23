=begin

PROBLEM
Write a method that takes two Array arguments in which each  Array contains a list of numbers, and returns a new Array that  contains the product of each pair of numbers from the arguments that have the same index.  You may assume that  the arguments contain the same number of elements.

EXAMPLE
multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

Input: two Arrays of same size, containing numbers
Output: one Array (same size as input), containing numbers

IDEAS

Method 1
- use a counter to keep track of and increment the index
- find the product of the element at index in arr1 and  the element at index in arr2
- append this product to output array
- add 1 to index
- continue until index reaches the length of the input arrays

Method 2
- zip the two arrays together
- map the resulting  nested array to an array containing the products  of elements of each sub-array

ALGORITHM
- initialize empty output array
- initialize index at 0
- append (arr1[index] * arr2[index] to output
- stop when index == arr1.length
- return output

=end

def multiply_list(arr1, arr2)
  products = []
  index = 0
  loop do
    products << arr1[index] * arr2[index]
    index += 1
    break if index == arr1.length
  end
  products
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]


def multiply_list_2(arr1, arr2)
  arr1.zip(arr2).map { |a| a.inject(:*) }
end

p multiply_list_2([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
