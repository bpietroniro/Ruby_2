# Find the index of the first name that starts with "Be"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

position = flintstones.index { |name| name.start_with?("Be") }
puts position

# OR

position = flintstones.index { |name| name[0, 2] == "Be" }
puts position

