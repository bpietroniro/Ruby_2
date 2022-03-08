# (1..99).each { |num| puts num if num.odd? }

# OR

# 1.upto(99) { |n| puts n if n % 2 == 1 }

n = 1
while n <= 99
  puts n
  n += 2
end

