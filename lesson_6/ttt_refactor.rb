# ttt_refactor.rb

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]] # diagonals

FIRST_MOVE = "Choose"  # Must be set to 'Choose', 'Player' or 'Computer'

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop disable Metrics/MethodLength, Metrics/AbcSize
def display_board(brd)
  system 'clear' # 'clear' is os specific
  puts ""
  puts "You're '#{PLAYER_MARKER}', the Computer is '#{COMPUTER_MARKER}'"
  puts "Winner is first to win 5 games with no limit on draws"
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

# add grammar to last choice of moves for player to improve readability  
def joinor(empty_squares, sep=', ', last_sep='or')
  if empty_squares.size > 1
    empty_squares[0..-2].join(sep) + " #{last_sep} " + empty_squares[-1].to_s
  else
    empty_squares.join
  end
end

def determine_first_player
  if FIRST_MOVE == 'Player'
    return 'Player'
  elsif FIRST_MOVE == 'Computer'
    return 'Computer'
  else
    loop do 
      prompt "Please choose who should go first: Computer (C) or Player (P)"
      answer = gets.chomp.downcase
        if answer.start_with?('c')
          return 'Computer'
        elsif answer.start_with?('p')
          return 'Player'
        end
      prompt "Invalid choice (should be C or P)"
    end
  end
end

def game_finished(brd)
  someone_won?(brd) || board_full?(brd)
end

def player_is_first(brd)
  loop do
    display_board(brd)
    player_places_piece!(brd)
    break if game_finished(brd)
    computer_places_piece!(brd)
    break if game_finished(brd)
  end
end

def computer_is_first(brd)
  loop do
    display_board(brd)
    computer_places_piece!(brd)
    break if game_finished(brd)
    display_board(brd)
    player_places_piece!(brd)
    break if game_finished(brd)
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))})"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's an invalid entry"
  end
  brd[square] = PLAYER_MARKER
end

def find_at_risk_square(line, board)
  if board.values_at(*line).count(PLAYER_MARKER) == 2
    board.select{|k,v| line.include?(k) && v == INITIAL_MARKER}.keys.first
  else
    nil
  end
end

def find_winner(line, board)
  # find winning line if 2 of 3 ar marked with 'O' and one is ' '
  if board.values_at(*line).count(COMPUTER_MARKER) == 2
    board.select{|k,v| line.include?(k) && v == INITIAL_MARKER}.keys.first
  else
    nil
  end
end

def computer_places_piece!(brd)
  square = nil
  # find winning line if available
  WINNING_LINES.each do |line|
    square = find_winner(line, brd)
    break if square
  end

  # play defense if necessary
  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd)
      break if square
    end
  end

  # play middle square if open
  if brd[5] == INITIAL_MARKER
    square = 5
  end
  
  # otherwise choose random square
  if !square
    square = empty_squares(brd).sample
  end

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
  end
  nil
end

def game_over?(player_score, computer_score)
  return true if player_score == 5 || computer_score == 5
  false
end

player_score    = 0
computer_score  = 0
ties            = 0
first_player = determine_first_player()

loop do
  board = initialize_board
  display_board(board)
    
  if first_player == "Player"
    player_is_first(board)
  elsif first_player == "Computer"
    computer_is_first(board)
  end

  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
  else
    prompt "It's a tie!"
  end

  player_score    += 1 if detect_winner(board) == 'Player'
  computer_score  += 1 if detect_winner(board) == 'Computer'
  ties            += 1 if detect_winner(board) == nil

  if game_over?(player_score, computer_score)
    prompt "The overall winner is the #{detect_winner(board)}"
    break
  else 
    prompt "The score is Player wins: #{player_score}, Computer wins: #{computer_score}, Ties: #{ties}"
    prompt "Hit 'enter' to continue"
    gets.chomp
  end
end

prompt "The final score is Player wins: #{player_score}, Computer wins: #{computer_score}, Ties: #{ties}"
prompt "Thanks for playing Tic Tac Toe. Goodbye!"
