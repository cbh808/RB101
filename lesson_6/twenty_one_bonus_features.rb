SUITES = ['C', 'D', 'H', 'S']
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

ROUNDS = 3

GAME_NAME = 21
DEALER_STAY = 17

def prompt(str)
  puts "=> #{str}"
end

def display_welcome
  system 'clear'
  prompt("Let's play #{GAME_NAME}!")
  prompt("The first one to win #{ROUNDS} rounds wins the game.")
  prompt("C = Clubs, D = Diamonds, H = Hearts, S = Spades")
  puts ""
end

def display_current_round(round_number)
  prompt "ROUND #{round_number}"
  puts "========================="
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
  prompt "Dealer Cards: ? and #{dealer_hand[1][0]}#{dealer_hand[1][1]}"
  prompt "Player Cards: #{player_hand[0][0]}#{player_hand[0][1]} and " \
                          "#{player_hand[1][0]}#{player_hand[1][1]}, " \
                        "Player has #{player_total}"
  puts ""
end

def deal_card(deck, hand)
  hand << deck.shift
end

def display_card_drawn(hand, player_or_dealer)
  prompt "Card Drawn: #{hand[-1][0]}#{hand[-1][1]}, " \
        "#{player_or_dealer} has #{total(hand)}"
  puts ""
end

def correct_for_aces(values, sum)
  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > GAME_NAME
  end
  sum
end

def total(cards)
  # cards = [['H','A'], ['D','J']... ]
  # transform cards to an ary of card values (as strings)
  values = cards.map { |card| card[1] }

  sum = 0
  values.each do |value|
     sum += if value == "A"
              11
            elsif value.to_i == 0 # J, Q, K
              10
            else
              value.to_i
            end
  end

  correct_for_aces(values, sum)
end

def player_plays(deck, player_hand)
  loop do
    prompt "(h)it or (s)tay?"
    answer = gets.chomp.downcase

    if answer == 'h' || answer == 'hit'
      prompt("Player takes card!")
      deal_card(deck, player_hand)
      display_card_drawn(player_hand, "Player")
    elsif answer == 's' || answer == 'stay'
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

def display_dealer_hand(dealer_hand, dealer_total)
  prompt "Dealer Cards: #{dealer_hand[0][0]}#{dealer_hand[0][1]} and " \
                          "#{dealer_hand[1][0]}#{dealer_hand[1][1]}, " \
                          "Dealer has #{dealer_total}"
end

def dealer_plays(deck, dealer_hand, dealer_total)
  display_dealer_hand(dealer_hand, dealer_total)

  loop do
    if total(dealer_hand) >= DEALER_STAY
      break
    else
      sleep 1
      prompt("Dealer takes card!")
      sleep 1
      deal_card(deck, dealer_hand)
      display_card_drawn(dealer_hand, "Dealer")
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

def display_round_winner(player_total, dealer_total)
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

def display_overall_winner(player_wins)
  puts "----------------------------------------------------------"
  if player_wins[0] == ROUNDS
    prompt "The Player has #{ROUNDS} wins and has won the match!"
  else
    prompt "The Dealer has #{ROUNDS} wins and has won the match!"
  end
  puts "----------------------------------------------------------"
end

def update_score(player_total, dealer_total, player_wins, dealer_wins, pushes)
  if player_total > GAME_NAME
    dealer_wins[0] += 1
  elsif dealer_total > GAME_NAME
    player_wins[0] += 1
  elsif player_total == dealer_total
    pushes[0] += 1
  elsif player_total > dealer_total
    player_wins[0] += 1
  else
    dealer_wins[0] += 1
  end
end

def someone_won?(player_wins, dealer_wins)
  player_wins[0] == ROUNDS || dealer_wins[0] == ROUNDS
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

    if answer == 'y' || answer == 'yes'
      return true
    elsif answer == 'n' || answer == 'no'
      return false
    else
      prompt "Invalid input!"
    end
  end
end

def display_goodbye
  prompt "Thanks for playing #{GAME_NAME}!"
  puts ""
end

loop do
  player_wins = [0]
  dealer_wins = [0]
  pushes = [0]

  player_total = 0
  dealer_total = 0

  round = 1

  display_welcome

  loop do
    sleep 1
    display_current_round(round)
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
      display_round_winner(player_total, dealer_total)
      break
    end

    update_score(player_total, dealer_total, player_wins, dealer_wins, pushes)

    if someone_won?(player_wins, dealer_wins)
      display_overall_winner(player_wins)
      break
    else
      sleep 1.5
      display_score(player_wins[0], dealer_wins[0], pushes[0])
      system 'clear'
    end
    round += 1
  end
  break unless play_again?
end

display_goodbye
