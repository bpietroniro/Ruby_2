#### Code Examples

```ruby
a = 4
b = nil

loop do
  a = 5
  b = 3
  break
end

puts a
puts b
```

On `line 1`, we initialize the local variable `a` and assign it the integer value `4`. 

On `lines 3-7` we are calling the `Kernel` method `loop` and passing it a `do..end` block as an argument. Within the block, on `line 4`, local variable `a` is reassigned the integer value `5`. Then, on `line 5`, local variable `b` is initialized and assigned the integer value `3`. We end the loop on `line 6` with the `break` keyword.

On `line 9`, we call the `puts` method and pass in local variable `a` as an argument. Since `a` was assigned the value `5` within the loop, this outputs `5`.

On `line 10` we're calling the `puts` method again and passing in `b` as an argument; however, this will throw an error, because the variable `b` was initialized within a block, and is no longer available in the scope outside the block.

This is a demonstration of variable scoping and the fact that blocks define a new scope level. Local variables initialized *before and outside* the block are accessible within the block, but local variables defined *within* a block are not available outside of it.



```ruby
a = 4
b = 2

loop do
  c = 3
  a = c
  break
end

puts a
puts b
```