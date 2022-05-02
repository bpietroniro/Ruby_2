=begin

You have a bank of switches before you, numbered from 1 to n. Each switch is connected to exactly one light that is initially off. You walk down the row of switches and toggle every one of them. You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. You repeat this process and keep going until you have been through n repetitions.

Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after n repetitions.

Example with n = 5 lights:

round 1: every light is turned on
round 2: lights 2 and 4 are now off; 1, 3, 5 are on
round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].


PROBLEM
- input: a number, n, which tell us 
  1) how many switches there are
  2) how many repetitions of the toggling process to do
- output: an array representing which switches are toggled "on" after n toggle rounds
- rules for toggling:
  - toggle round K involves toggling each switch in the bank whose position is a multiple of K
  NOTE: the switches are numbered from 1 (not 0!) through n
  - toggling means turning the switch to "off" if it's currently "on", and vice versa

DATA STRUCTURES
- we'll use `true` and `false` to represent "on" and "off" states, respectively
- given the input size, we build an array; the starting value at each position is `false`
- at the end we'll return an output array that is the result of selection on the first array (we return an array of which index numbers contain the value "true")
  NOTE: make sure to add 1 to each of these index numbers

ALGORITHM
- initialize switch bank array: n elements with the value `false`
- for each integer 1-n:
  - set index  equal to current integer
  - loop:
    - negate the status of the switch bank element at the current index
    - index += current integer
- initialize output array
- iterate through switch bank:
  - if the current element is `true`, add the current index to output array
- return output array

=end

def toggle_switches(n)
  switch_bank = Array.new(n, false)

  1.upto(n) do |current_rep|
    index = current_rep
    until index >= n
      switch_bank[index - 1] = !switch_bank[index - 1]
      index += current_rep
    end
  end

  1.upto(n).select { |i| switch_bank[i - 1] }
end

p toggle_switches(5) == [1, 4]
p toggle_switches(10) == [1, 4, 9]
p toggle_switches(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]
