=begin

PROBLEM
Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed into this method. The return value should be the same Array object.

(examples below)

IDEAS
One way we could do this is to reappend each item to the array (destructively), and then remove the original items.

Worth a try.

ALGORITHM
- initialize temp array
- repeat (arr.length) times:
  - remove items from the input array, starting with the last and working backwards to the first
- push all elements from the temp array back into the input array (preserving their order)
- return the input array

=end

def reverse!(arr)
  temp = []
  arr.length.times { |element| temp << arr.pop }
  arr.prepend(temp).flatten!
end


list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true
