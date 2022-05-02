=begin

PROBLEM
Write a method which takes a grocery list (array) of fruits with quantities and converts it into an array of the correct number of each fruit.

EXAMPLE
buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

DATA STRUCTURE
Taking in a nested array, building a non-nested array.

ALGORITHM
- initialize empty output array
- iterate through input array
  - append the first element of the current array to the output array; do this arr[1] times
- return output array

=end

def buy_fruit(fruits_and_quantities)
  list = []
  fruits_and_quantities.each do |fruit, quantity|
    quantity.times { list << fruit }
  end
  list
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
