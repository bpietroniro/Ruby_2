def double_numbers!(numbers)
  counter = 0

  loop do
    break if counter == numbers.size

    numbers[counter] *= 2
    counter += 1
  end

  puts "Output: #{numbers}"
  numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]

puts "Original array: #{my_numbers}"
puts "Original array object ID: #{my_numbers.object_id}"
puts "Output array object ID: #{double_numbers!(my_numbers).object_id}"
