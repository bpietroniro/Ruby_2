require 'pry-byebug'

=begin

PROBLEM
Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the number of characters in the string that are lowercase letters, one the number of characters that are uppercase letters, and one the number of characters that are neither.

(examples below)

DATA STRUCTURES
- output a hash with symbol keys and integer values

ALGORITHM
- initialize new hash with the three keys indicated, each starting with value 0
- split the string into char array and iterate through it
  - if the current char is in 'a-z', increment :lowercase
  - if it's in 'A-Z', increment :uppercase
  - otherwise increment :neither
- return the hash

=end

def letter_case_count(string)
  counts = { lowercase: 0, uppercase: 0, neither: 0 }

  string.split('').each do |char|
    # binding.pry
    if char.match(/[a-z]/)
      counts[:lowercase] += 1
    elsif char.match(/[A-Z]/)
      counts[:uppercase] += 1
    else
      counts[:neither] += 1
    end
  end

  counts
end



p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
