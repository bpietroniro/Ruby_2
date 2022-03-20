require 'pry-byebug'

=begin

The board will look something like this:
   |   |
   |   |
---+---+---
   |   |
   |   |
---+---+---
   |   |
   |   |

A variety of data structures could work for storing the state of the
game board. Here we will use a hash, with numbers as keys representing
the spaces on the board like so:

1 2 3
4 5 6
7 8 9

TODO: look for ways to refactor, then request code review
TODO: explore the minimax algorithm
TODO: build functionality for bigger board sizes
TODO: build functionality for 2 human players, and/or more than 2 computer players

=end

ROUNDS = 5
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]]              # diagonals

def prompt(message)
  puts "=> #{message}"
end

def joinor(options, delimiter=', ', word='or')
  case options.length
  when 0 then ''
  when 1 then options.first
  when 2 then "#{options[0]} #{word} #{options[1]}"
  else
    options[0..-2].join(delimiter) + "#{delimiter}#{word} " + options.last.to_s
  end
end

def display_board(b)
  system 'clear'
  puts ""
  puts "     |     |"
  puts "  #{b[1]}  |  #{b[2]}  |  #{b[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{b[4]}  |  #{b[5]}  |  #{b[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{b[7]}  |  #{b[8]}  |  #{b[9]}"
  puts "     |     |"
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def place_piece!(brd, player)
  case player
  when 'Player'
    player_places_piece!(brd)
  when 'Computer'
    computer_places_piece!(brd)
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end

  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  chosen = false
  comp_choice = 0

  WINNING_LINES.each do |line|
    if threatened?(line, brd, COMPUTER_MARKER)
      comp_choice = choose_square(line, brd)
      chosen = true
      break
    end
  end
  unless chosen
    WINNING_LINES.each do |line|
      if threatened?(line, brd, PLAYER_MARKER)
        comp_choice = choose_square(line, brd)
        chosen = true
        break
      end
    end
  end

  unless chosen
    comp_choice = brd[5] == ' ' ? 5 : empty_squares(brd).sample
  end
  
  brd[comp_choice] = COMPUTER_MARKER
end


def threatened?(line, brd, marker)
  pieces = brd.values_at(*line)
  (pieces.count(marker) == 2) && (pieces.include?(INITIAL_MARKER))
end

def choose_square(line, brd)
  line.select { |space| brd[space] == ' ' }.first
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def who_goes_first?
  answer = ''
  loop do
    prompt "Who gets to make the first move, you or the computer?"
    prompt "(enter 'c' for computer, 'h' for human, or 'x' to let the computer choose)"
    answer = gets.chomp.downcase
    break if ['h', 'c', 'x'].include?(answer)
    prompt "Invalid choice. Please enter 'c' or 'h':"
  end

  case answer
  when 'x' then ["Player", "Computer"].sample
  when 'h' then "Player"
  when 'c' then "Computer"
  end
end

def alternate_player(player)
  return "Computer" if player == "Player"
  return "Player" if player == "Computer"
end

loop do
  prompt "Welcome to Tic-Tac-Toe! Winner of #{ROUNDS} rounds wins the match."
  prompt "Press [Enter] to continue."
  gets
  scores = [0, 0]
  stop_requested = false

  loop do
    board = initialize_board
    current_player = who_goes_first?

    loop do
      display_board(board)
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end

    display_board(board)

    if someone_won?(board)
      winner = detect_winner(board)
      prompt "#{winner} won!"
      winner == "Player" ? scores[0] += 1 : scores[1] += 1
    else
      prompt "It's a tie!"
    end

    prompt "Player: #{scores[0]}, Computer: #{scores[1]}"
    break if scores.include?(5)
    prompt "Play again? ('y' to play again, anything else to stop)"
    answer = gets.chomp
    unless answer.downcase.start_with?('y')
      stop_requested = true
      break
    end
  end

  break if stop_requested
  if scores[0] == ROUNDS
    prompt "GAME OVER: Player wins the match!"
    break
  elsif scores[1] == ROUNDS
    prompt "GAME OVER: Computer wins the match!"
    break
  end
end
