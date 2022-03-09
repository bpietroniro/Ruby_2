# In the age hash, remove people with age 100 and greater.

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.reject! { |_, age| age >= 100 }
puts ages

# OR

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.select! { |_, age| age < 100 }
puts ages

# LS solution uses Hash#keep_if, which is also a destructive method
