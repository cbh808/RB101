VALID_CHOICES = %w(rock paper scissors spock lizard)
#  in hash must use '=>' when not using symbols as keys
Abreviations = { "r" => "rock", "p" => "paper", "sc" => "scissors",
               "sp" => "spock", "l" => "lizard" }

player_wins = 0
computer_wins = 0
tie_games = 0

def prompt(message)
  Kernel.puts("=> #{message}")
end

def choice_array(choice)
  index = VALID_CHOICES.index(choice)  # find index of player choice &
  VALID_CHOICES.rotate(index)          # rotate w/ player choice @ index[0]
end

def determine_results(player, computer)
  if  computer == choice_array(player)[2] ||
      computer == choice_array(player)[4]
    'player'
  elsif player == computer
    'tie'
  else
    'computer'
  end
end

def display_results(winner, player_wins, computer_wins, tie_games)
  if winner == 'player'
    if player_wins == 1
      prompt("You won! You have #{player_wins} win.")
    else
      prompt("You won! You have #{player_wins} wins.")
    end
  elsif winner == 'tie'
    if tie_games == 1
      prompt("It's a tie! There has been #{tie_games} tie.")
    else
      prompt("It's a tie! There have been #{tie_games} ties.")
    end
  else
    if computer_wins == 1
      prompt("Computer won. The compi has #{computer_wins} win.")
    else
      prompt("Computer won. The compi has #{computer_wins} wins.")
    end
  end
end

def end_game?(player_wins, computer_wins, tie_games)
  if  player_wins == 5 ||
      computer_wins == 5 ||
      tie_games == 5
    true
  else
    false
  end
end

def final_message(player_wins, computer_wins)
  if player_wins == 5
    prompt("You have won 5 games and are the grand winner! Congrats!")
  elsif computer_wins == 5
    prompt("The computer won 5 games and is the grand winner! Try Again!")
  else
    prompt("You and the computer both won 5 games - It's a tie")
  end
end

prompt("As everybody knows:
  Scissors cuts Paper covers Rock crushes
  Lizard poisons Spock smashes Scissors
  decapitates Lizard eats Paper disproves
  Spock vaporizes Rock crushes Scissors\n\n")

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}
    or abreviate with 'r', 'p', 'sc', 'sp' or 'l'")
    input = Kernel.gets().chomp()
    if Abreviations.has_key?(input)
      choice = Abreviations[input]
      break
    elsif VALID_CHOICES.include?(input)
      choice = input
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = ['rock', 'paper', 'scissors', 'spock', 'lizard'].sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}\n")

  winner = determine_results(choice, computer_choice)

  if winner == 'player'
    player_wins += 1
  elsif winner == 'computer'
    computer_wins += 1
  else
    tie_games += 1
  end

  display_results(winner, player_wins, computer_wins, tie_games)

  if end_game?(player_wins, computer_wins, tie_games)
    final_message(player_wins, computer_wins)
    break
  end

  prompt("Do you want to play again? (hit 'y' if yes)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thanks for playing - Goodbye!")
