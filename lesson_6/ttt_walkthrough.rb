require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]] # diagonals

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop disable Metrics/MethodLength, Metrics/AbcSize
def display_board(brd)
  system 'clear' # 'clear' is os specific
  puts ""
  puts "You're '#{PLAYER_MARKER}', the Computer is '#{COMPUTER_MARKER}'"
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
end
# rubocop enable Metrics/MethodLength, Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{empty_squares(brd).join(', ')}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's an invalid entry"
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = empty_squares(brd).sample
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty? # '.empty' equivalent to '== []'
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3 # '*line' = splat operator 
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
    # if  brd[line[0]] == PLAYER_MARKER &&
    #     brd[line[1]] == PLAYER_MARKER &&
    #     brd[line[2]] == PLAYER_MARKER
    # return "Player"
    # elsif
    #       brd[line[0]] == COMPUTER_MARKER &&
    #       brd[line[1]] == COMPUTER_MARKER &&
    #       brd[line[2]] == COMPUTER_MARKER
    # return 'Computer'
    # end
  end
  nil
end

loop do
  board = initialize_board

  loop do
    display_board(board)
    player_places_piece!(board)
    break if someone_won?(board) || board_full?(board)
    computer_places_piece!(board)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
  else
    prompt "It's a tie!"
  end

  prompt "Would you like to play again? (y/n)"
  answer = gets.chomp.downcase
  break if answer.start_with?('n')
end
  
prompt "Thanks for playing Tic Tac Toe. Goodbye!"
puts ""