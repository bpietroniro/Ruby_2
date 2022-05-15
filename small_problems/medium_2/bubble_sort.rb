=begin

A bubble sort works by making multiple passes (iterations) through the Array. On each pass, each pair of consecutive elements is compared. If the first of the two elements is greater than the second, then the two elements are swapped. This process is repeated until a complete pass is made without performing any swaps; at that point, the Array is completely sorted.

Write a method that takes an Array as an argument, and sorts that Array using the bubble sort algorithm as just described. Note that your sort will be "in-place"; that is, you will mutate the Array passed as an argument. You may assume that the Array contains at least 2 elements.

(examples below)

input: array
output: the same array object with the same elements, sorted from least to greatest

ALGORITHM
- loop:
  - initialize index at 0
  - sorted = true
  - loop:
    - compare the elements at positions (index) and (index + 1)
      - if arr[index] > arr[index + 1]:
        -switch them
        - sorted = false
    - index += 1
    - break if index == arr.length - 1
  - break if sorted == true
- return the input array

=end

def bubble_sort!(arr)
  loop do
    index = 0
    sorted = true
    
    loop do
      if arr[index] > arr[index + 1]
        arr[index], arr[index + 1] = arr[index + 1], arr[index]
        sorted = false
      end

      index += 1
      break if index == arr.size - 1
    end

    break if sorted
  end
end


array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
