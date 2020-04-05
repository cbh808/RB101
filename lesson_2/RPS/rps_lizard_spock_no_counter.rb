VALID_CHOICES = %w(rock paper scissors spock lizard)
#  in hash must use '=>' when not using symbols as keys
Abreviations = { "r" => "rock", "p" => "paper", "sc" => "scissors", "sp" => "spock", "l" => "lizard"}

def prompt(message)
  Kernel.puts("=> #{message}")
end

def choice_array(choice)
  index = VALID_CHOICES.index(choice)  # find index of player choice &
  VALID_CHOICES.rotate(index)          # rotate w/ player choice @ index[0]
end

def display_results(player, computer)
  if  computer == choice_array(player)[2] ||
      computer == choice_array(player)[4]
    prompt("You won! :-)")
  elsif player == computer
    prompt("It's a tie!")
  else
    prompt("Computer won ;-)")
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

  display_results(choice, computer_choice)

  prompt("Do you want to play again? (hit 'y' if yes)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thanks for playing - Goodbye!")

# implement couters that displays at exit number of times
  # user wins
  # computer wins
  # number of ties
