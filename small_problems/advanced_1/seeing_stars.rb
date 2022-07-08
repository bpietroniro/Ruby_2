=begin
- middle line (i.e. line k/2) consists of n stars and that's it
- otherwise, line k consists of three stars separated by (n-3)/2 - k spaces, centered

- initialize a result array (this will be an array of n strings, where each string represents a line of the output picture)

lines 0 through n/2 - 1:
- padding: k spaces
- separator = (n-3)/2 - k spaces
- build the string
  - formula: padding, star, separator, star, separator, star
- add the string to result array

line n/2:
- build the string of n stars
- add the string to result array

lines n/2 + 1 through n - 1:
- padding: (n-k) spaces
- separator = 
=end
