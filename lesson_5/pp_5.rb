# Given the following hash, figure out the total age of just the male
# members of the family.
#
# sum all the elements found at munsters[key]["age"] if munsters[key]["gender"] == "male"
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

total_male_age = 0
munsters.each do |_, info|
  total_male_age += info["age"] if info["gender"] == "male"
end

puts total_male_age

