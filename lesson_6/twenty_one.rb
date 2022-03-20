# notes in twenty_one.md

require 'pry-byebug'

deck = []
dealer = []
player = []

def get_points_value(card_value)
  case card_value
  when '2'..'9' then card_value.to_i
  when '10', 'J', 'Q', 'K' then 10
  end
end

def total_value(hand)
  number_of_aces = hand.count { |card| card[1] == 'A' }
  non_ace_values = hand.select { |card| card[1] != 'A' }.map { |card| card[1] }
  # binding.pry
  
  sum = 0
  unless non_ace_values.empty?
    sum = non_ace_values.inject(0) { |total, card| total + get_points_value(card) }
  end

  while number_of_aces > 0
    if sum >= 11
      sum += number_of_aces
      break
    else
      sum += 11
      number_of_aces -= 1
    end
  end

  sum
end

