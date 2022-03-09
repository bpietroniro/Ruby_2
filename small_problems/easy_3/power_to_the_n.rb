def multiply(num1, num2)
  num1 * num2
end

def square(n)
  multiply(n, n)
end

# multiply the base by itself "power" times over
def raise_to_power(base, power)
  result = 1
  power.times { result = multiply(result, base) }
  result
end

puts raise_to_power(3, 2) == 9
puts raise_to_power(4, 3) == 64
puts raise_to_power(3, 0) == 1
puts raise_to_power(0, 16) == 0
puts raise_to_power(0, 0) == 1
