def select_fruit(produce)
  fruit = Hash.new
  counter = 0
  produce_items = produce.keys

  loop do
    break if counter == produce_items.size

    current_item = produce_items[counter]
    if produce[current_item] == 'Fruit'
      fruit[current_item] = 'Fruit'
    end

    counter += 1
  end
  fruit
end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

puts select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}
