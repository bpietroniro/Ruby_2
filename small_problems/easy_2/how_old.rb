puts ("Enter a name:")
answer = gets.chomp
name = answer == '' ? "Teddy" : answer
age = rand(20..200)
puts "#{name.capitalize} is #{age} years old."
