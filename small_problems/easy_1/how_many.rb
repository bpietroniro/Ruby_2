=begin
PROBLEM:
Write a method that counts the number of occurrences of
each element in a given array.

EXAMPLE: 
sample input: 
vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

expected output: 
car => 4
truck => 3
SUV => 1
motorcycle => 2

DATA STRUCTURE:
a hash where each key is a word and its value is the number of times
it appears in the input arraay

ALGORITHM:
loop through the input array from first element to last
for each element, if the element is already a key in the hash,
just increment its value by 1. otherwise, create a new key for the
element and initialize its value as 1.

=end

def count_occurrences(arr)
  frequencies = Hash.new(0)

  arr.map! { |e| e.downcase }
  arr.each { |e| frequencies[e] += 1 }

  frequencies.each do |element, count|
    puts "#{element} => #{count}"
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'suv', 'car', 'truck'
]

count_occurrences(vehicles)

