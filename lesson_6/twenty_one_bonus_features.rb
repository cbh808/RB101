SUITES = ['C', 'D', 'H', 'S']
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

ROUNDS = 3

GAME_NAME = 21
DEALER_STAY = 17

def prompt(str)
  puts "=> #{str}"
end

def start_display
  system 'clear'
  prompt("Let's play #{GAME_NAME}!")
  prompt("The first one to win #{ROUNDS} rounds wins the game.")
  prompt("C = Clubs, D = Diamonds, H = Hearts, S = Spades")
  puts ""
end

def initialize_deck
  SUITES.product(VALUES).shuffle
end

def deal_first2cards(deck, player_hand, dealer_hand)
  2.times do
    deal_card(deck, player_hand)
    deal_card(deck, dealer_hand)
  end
end

def display_hands(player_hand, dealer_hand, player_total)
  prompt "Dealer Cards: ? and #{dealer_hand[1]}"
  prompt "Player Cards: #{player_hand}, Player has #{player_total}"
  puts ""
end

def deal_card(deck, hand)
  hand << deck.shift
end

def show_card_drawn(hand, player_or_dealer)
  prompt("Card Drawn: #{hand[-1]}, #{player_or_dealer} has #{total(hand)}")
  puts ""
end

def total(cards)
  # cards = [['H','A'], ... ]
  # initiates values = ary of card values (as strings)
  values = cards.map { |card| card[1] }

  sum = 0
  values.each do |value|
    sum +=  if value == "A"
              11
            elsif value.to_i == 0 # J, Q, K
              10
            else
              value.to_i
            end
          end

  # correct for Aces
  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > GAME_NAME
  end

  sum
end

def player_plays(deck, player_hand)
  loop do
    prompt "(h)it or (s)tay?"
    answer = gets.chomp.downcase

    if answer.start_with?('h')
      prompt("Player takes card!")
      deal_card(deck, player_hand)
      show_card_drawn(player_hand, "Player")
    elsif answer.start_with?('s')
      break
    else prompt "Invalid input!"
    end

    break if total(player_hand) > GAME_NAME
  end
end

def display_player_result(player_total)
  if player_total > GAME_NAME
    prompt "Player Busted - Dealer Wins!"
  else
    prompt "Player stays at #{player_total}"
  end
  puts "--------------------------------"
end

def busted?(total)
  total > GAME_NAME
end

def dealer_plays(deck, dealer_hand, dealer_total)
  prompt "Dealer Cards: #{dealer_hand}, Dealer has #{dealer_total}"
  loop do
    if total(dealer_hand) >= DEALER_STAY
      break
    else
      sleep 1
      prompt("Dealer takes card!")
      sleep 1
      deal_card(deck, dealer_hand)
      show_card_drawn(dealer_hand, "Dealer")
    end
  end
end

def display_dealer_result(dealer_total)
  sleep 1.5
  if dealer_total > GAME_NAME
    prompt "Dealer Busted - Player Wins!"
  else
    prompt "Dealer stays at #{dealer_total}"
  end
  puts "--------------------------------"
end

def display_winner(player_total, dealer_total)
  sleep 1.5
  if player_total > dealer_total
    prompt "Player Wins!"
  elsif dealer_total > player_total
    prompt "Dealer Wins!"
  else
    prompt "It's a 'push', no one wins."
  end
  puts "--------------------------------"
end

def declare_overall_winner(player_wins)
  puts "----------------------------------------------------------"
  if player_wins == ROUNDS
    prompt "The Player has #{ROUNDS} wins and has won the match!"
  else
    prompt "The Dealer has #{ROUNDS} wins and has won the match!"
  end
  puts "----------------------------------------------------------"
end

def display_score(player_wins, dealer_wins, pushes)
  puts "---------------------------------------------"
  prompt "Player: #{player_wins} wins"
  prompt "Dealer: #{dealer_wins} wins"
  prompt "Pushes: #{pushes}"
  puts "---------------------------------------------"
  prompt "Hit 'ENTER' to start next round"
  gets.chomp
end

def play_again?
  loop do
    prompt("Would you like to play again?  Please choose (y)es or (n)o.")
    answer = gets.chomp.downcase

    if answer.start_with?('y')
      return true
    elsif answer.start_with?('n')
      return false
    else
      prompt "Invalid input!"
    end
  end
end

loop do
  player_wins = 0
  dealer_wins = 0
  pushes = 0

  player_total = 0
  dealer_total = 0

  i = 1

  start_display

  loop do
    sleep 1
    prompt "ROUND #{i}"
    puts "========================="
    player_hand = []
    dealer_hand = []
    deck = initialize_deck
    loop do
      deal_first2cards(deck, player_hand, dealer_hand)
      player_total = total(player_hand)
      dealer_total = total(dealer_hand)
      display_hands(player_hand, dealer_hand, player_total)
      player_plays(deck, player_hand)
      player_total = total(player_hand)
      display_player_result(player_total)
      break if busted?(player_total)
      dealer_plays(deck, dealer_hand, dealer_total)
      dealer_total = total(dealer_hand)
      display_dealer_result(dealer_total)
      break if busted?(dealer_total)
      display_winner(player_total, dealer_total)
      break
    end

    # increment wins and pushes
    if player_total > GAME_NAME
      dealer_wins += 1
    elsif dealer_total > GAME_NAME
      player_wins += 1
    elsif player_total == dealer_total
      pushes += 1
    elsif player_total > dealer_total
      player_wins += 1
    else
      dealer_wins += 1
    end

    # display intermediate score or overall winner
    if player_wins == ROUNDS || dealer_wins == ROUNDS
      declare_overall_winner(player_wins)
      break
    else
      sleep 2
      display_score(player_wins, dealer_wins, pushes)
    end
    i += 1
  end
  break unless play_again?
end

prompt("Thanks for playing #{GAME_NAME}!")
puts ""
