## High-level pseudo-code

1. Initialize deck
2. Deal cards to player and dealer
3. Player turn: hit or stay
  - repeat until bust or "stay"
4. If player bust, dealer wins.
5. Dealer turn: hit or stay
  - repeat until total >= 17
6. If dealer bust, player wins.
7. Compare cards and declare winner.

### Possible data structures
A hash would work well since the keys are categorical (player, dealer, deck)
rather than numerical. The values should probably be arrays representing
each hand, where the array elements are single-character strings that
each represent a card.

- Question: do we need to do anything with suits? I'm assuming not...

##### Example:
```ruby
gamestate = {
  dealer: [9, 5]
  player: [2, A, Q]
  deck: ['2', '7', '9', 'J', '4', 'K', 'Q'] # etc.
}
```

On the other hand... maybe we don't need a master hash. And maybe we do 
need to deal with suits. In that case, each hand should be a nested array,
with each card as a 2D sub-array; the first element represents the card's
suit and the second element represents the card's value, for example.

### Calculating aces
- if the current hand value is 10 or less:
  - value of new ace is 11
- otherwise, the value of the new ace is 11. BUT:
  - Question: what if there's already one or more aces in the hand?
    Can their value change from 11 to 1 once they're already in hand?

### Calculating the total value of a hand
1. sum all non-ace values
2. if the sum is 11 or greater
  - all remaining aces are valued at 1
  - add remaining aces to the sum
3. otherwise, if the sum is 10 or less
  - while there are aces in the hand to add:
    - add an ace at value 11
    - go back to Step 2 with current sum and any remaining aces
4. return the sum

#### test cases for `total_value` method
```ruby
puts total_value([['H', 'A']]) == 11
puts total_value([['H', 'A'], ['H', 'Q']]) == 21
puts total_value([['H', 'A'], ['C', '10'], ['C', '4']]) == 15
puts total_value([['H', 'A'], ['C', '9'], ['C', 'A'], ['S', '3'], ['S', '8']]) == 22
```
