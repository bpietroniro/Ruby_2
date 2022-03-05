=begin

to implement "grand winner":

PROBLEM
When either the player or computer reaches three wins, the match is over,
and the winning player becomes the grand winner.

- instead of ending after one round, play until there's a winner
- increment the winning player's score after each round
- check for a win after each round

EXAMPLE
=> You won!
=> Your score: _ ; Computer's score: 2
=> Choose one: # etc.
# process turn
# increment winner's score, in this case Computer
=> Computer won
=> Your score: _ ; Computer's score: 3
=> Computer is the grand winner!
=> Do you want to play again? (Y/N)

DATA STRUCTURE
either an array where one score is at index 0 and the other is at 1...
or a hash initalized with entries "player" and "computer"...
or just two ints

it seems simplest to make the score count variable global... hope this is okay

ALGORITHM
have a method that takes the scorekeeping variable as an
argument, and checks to see if either score has hit three

=end

VALID_CHOICES = { 'r' => 'rock',
                  'p' => 'paper',
                  's' => 'scissors',
                  'k' => 'spock',
                  'l' => 'lizard' }

WINNING_MOVES = { 'rock' => ['scissors', 'lizard'],
                  'paper' => ['rock', 'spock'],
                  'scissors' => ['paper', 'lizard'],
                  'spock' => ['scissors', 'rock'],
                  'lizard' => ['spock', 'paper'] }

$score_count = [0, 0]

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  WINNING_MOVES[first].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
    $score_count[0] += 1
  elsif win?(computer, player)
    prompt("Computer won!")
    $score_count[1] += 1
  else
    prompt("It's a tie!")
  end
end

def grand_winner?
  $score_count.index(3)
end

def display_scores
  prompt("You: #{$score_count[0]}; Computer: #{$score_count[1]}")
end

loop do
  $score_count = [0, 0]
  prompt("Welcome to Rock, Paper, Scissors, Spock, Lizard!")
  loop do
    choice = ''

    loop do
      prompt("Choose one: #{VALID_CHOICES.values.join(', ')}")
      prompt("(You can also type R for rock, P for paper, S for scissors,
              K for spock, or L for lizard.)")
      choice = gets.chomp.downcase

      if VALID_CHOICES.keys.include?(choice)
        choice = VALID_CHOICES[choice]
        break
      elsif VALID_CHOICES.values.include?(choice)
        break
      else
        prompt("That's not a valid choice.")
      end
    end

    computer_choice = VALID_CHOICES.values.sample

    puts "You chose #{choice}; Computer chose #{computer_choice}."
    display_results(choice, computer_choice)

    if grand_winner? == 0
      prompt("You are the grand winner of this match!")
      break
    elsif grand_winner? == 1
      prompt("Computer is the grand winner of this match!")
      break
    end
  end

  prompt("GAME OVER")
  prompt("Do you want to play again? (Y/N)")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end
