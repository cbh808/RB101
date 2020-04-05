VALID_CHOICES = %w(rock paper scissors) # == ['rock' 'paper' 'scissors']

# def test_method
#   prompt("test_method worked")
# end

# test_method (raises "undefined method 'prompt'" error if called here)

def prompt(message)
  Kernel.puts("=> #{message}")
end

# test_method (test_method OK to call here)

def display_results(player, computer)
  if  (player == 'rock' && computer == 'scissors') ||
      (player == 'paper' && computer == 'rock') ||
      (player == 'scissors' && computer == 'paper')
    prompt("You won! :-)")
  elsif player == computer
    prompt("It's a tie!")
  else
    prompt("Computer won ;-)")
  end
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = ['rock', 'paper', 'scissors'].sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

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
