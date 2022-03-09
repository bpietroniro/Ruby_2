# Modify the hash such that each member of the Munster family has an
# additional "age_group" key that has one of three values describing
# the age group the family member is in (kid, adult, or senior).

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

=begin first attempt:

munsters.each do |_, hash|
  if hash["age"].between?(0, 17)
    hash["age_group"] = "kid"
  elsif hash["age"].between?(18, 64)
    hash["age_group"] = "adult"
  elsif hash["age"] >= 65
    hash["age_group"] = "senior"
  end
end

=end

munsters.each do |_, hash|
  case hash["age"]
  when (0..17)
    hash["age_group"] = "kid"
  when (18..64)
    hash["age_group"] = "adult"
  when (65..)
    hash["age_group"] = "senior"
  end
end

p munsters

