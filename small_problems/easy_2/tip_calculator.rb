print "What is the bill? "
bill_amount = gets.to_f

print "What is the tip percentage? "
tip_rate = gets.to_f

tip_amount = bill_amount * tip_rate / 100
puts "The tip is $" + format("%.2f", tip_amount) + "."
puts "The total is $#{format("%.2f", bill_amount + tip_amount)}."
