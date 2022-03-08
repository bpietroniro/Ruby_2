number = 0
loop do
  puts "=> Please enter an integer greater than 0:"
  number = gets.chomp
  unless (number.to_i.to_s == number) && number.to_i > 0
    puts "Invalid input."
    next
  end
  number = number.to_i
  break
end

choice = ''
loop do
  puts "=> Enter 's' to compute the sum, 'p' to compute the product, of all
            integers between 1 and #{number}."
  choice = gets.chomp
  unless choice == 's' || choice == 'p'
    puts "Invalid entry; please try again."
    next
  end
  break
end

case choice.downcase
when 's'
  sum = (1..number).reduce(:+)
  puts "The sum of the integers between 1 and #{number} is #{sum}."
when 'p'
  product = (1..number).reduce(:*)
  puts "The product of the integers between 1 and #{number} is #{product}."
end

