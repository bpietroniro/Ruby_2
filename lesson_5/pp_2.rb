=begin

PROBLEM
Order this array of hashes based on the year of publication of each book,
from the earliest to the latest.

ALGORITHM
- associate each hash key with the integer version of its publication year
  - iterate over the array
  - for each element (hash), get its "published" value 
  - compare this string to that of the other hashes in the array and sort accordingly
  - note: don't need to convert to integer becausse we know that the values are all 4 chars
  
=end

books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

puts books.sort_by { |book| book[:published] }
