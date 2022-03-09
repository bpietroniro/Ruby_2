flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# Turn this array into a hash where the names are the keys and the values
# are the positions in the array.

names_and_indices = {}
flintstones.each_with_index do |name, index|
  names_and_indices[name] = index
end

puts names_and_indices

# OR

index = 0
flintstones_hash = flintstones.each_with_object({}) do |name, hash|
  hash[name] = index
  index += 1
end

puts flintstones_hash
