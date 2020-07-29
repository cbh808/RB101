DECK =
  [
  ['C', '2'], ['C', '3'], ['C', '4'], ['C', '5'], ['C', '6'], ['C', '7'], ['C', '8'],
  ['C', '9'], ['C', '10'], ['C', 'J'], ['C', 'Q'], ['C', 'K'], ['C', 'A'],
  ['D', '2'], ['D', '3'], ['D', '4'], ['D', '5'], ['D', '6'], ['D', '7'], ['D', '8'],
  ['D', '9'], ['D', '10'], ['D', 'J'], ['D', 'Q'], ['D', 'K'], ['D', 'A'],
  ['H', '2'], ['H', '3'], ['H', '4'], ['H', '5'], ['H', '6'], ['H', '7'], ['H', '8'],
  ['H', '9'], ['H', '10'], ['H', 'J'], ['H', 'Q'], ['H', 'K'], ['H', 'A'],
  ['S', '2'], ['S', '3'], ['S', '4'], ['S', '5'], ['S', '6'], ['S', '7'],['S', '8'],
  ['S', '9'], ['S', '10'], ['S', 'J'], ['S', 'Q'], ['S', 'K'], ['S', 'A']
  ]

def prompt(str)
  puts "=> #{str}"
end

def initialize_deck(deck)
  deck.sample(52)
end

def deal_first2cards(deck, player_hand, dealer_hand)
  2.times do
    deal_card(deck, player_hand)
    deal_card(deck, dealer_hand)
  end
end

def display_hands(player_hand, dealer_hand)
  prompt "Dealer Cards: one card down, #{dealer_hand[1]}"
  prompt "Player Cards: #{player_hand}, total is #{total(player_hand)}"
  puts ""
end

def deal_card(deck, hand)
  hand << deck.shift
end

def show_card_drawn(hand)
  prompt("Card Drawn: #{hand[-1]}, total is #{total(hand)}")
  puts ""
end

def total(cards)
  # cards = ['H1','H2','H3' ... ]
  values = cards.map { |card| card[1] } # assigns ary of card values as strings

  sum = 0
  values.each do |value|
    if value == "A"
      sum += 11
    elsif value.to_i == 0 # J, Q, K
      sum += 10
    else
      sum += value.to_i
    end
  end

  # correct for Aces
  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > 21
  end

  sum
end

def player_plays(deck, player_hand, dealer_hand)
  loop do
    prompt "(h)it or (s)tay?"
    answer = gets.chomp.downcase

    if answer.start_with?('h')
      prompt("Player takes card!")
      deal_card(deck, player_hand)
      show_card_drawn(player_hand)
    elsif answer.start_with?('s')
      break
    else prompt "Invalid input!"
    end
    break if total(player_hand) > 21
    display_hands(player_hand, dealer_hand)
  end
  player_hand
end

def display_player_result(player_hand)
  if total(player_hand) > 21
    prompt "Player Busted! Dealer Wins"
  else
    prompt "Player has #{total(player_hand)}"
  end
  puts ""
end

def busted?(hand)
  total(hand) > 21
end

def display_dealer_hand(dealer_hand)
  prompt "Dealer Cards: #{dealer_hand}"
end

def dealer_plays(deck, dealer_hand)
  display_dealer_hand(dealer_hand)
  loop do
    if total(dealer_hand) >= 17
      break
    else
      prompt("Dealer takes card!")
      deal_card(deck, dealer_hand)
      show_card_drawn(dealer_hand)
    end
  end
end

def display_dealer_result(dealer_hand)
  if total(dealer_hand) > 21
    prompt "Dealer Busted! Player Wins"
  else
    prompt "Dealer has #{total(dealer_hand)}"
  end
  puts ""
end

def display_final_result(player_hand, dealer_hand)
  if total(player_hand) > total(dealer_hand)
    prompt "Player Wins!"
  elsif total(dealer_hand) > total(player_hand)
    prompt "Dealer Wins!"
  else
    prompt "It's a 'push', no one wins."
  end
  puts ""
end

def play_again
  loop do
    prompt("Play again? choose `y` for yes, `n` for no")
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
  puts "--------------------------------------------------"
  prompt("Let's play 21!")
  prompt("C = Clubs, D = Diamonds, H = Hearts, S = Spades")
  puts ""

  player_hand = []
  dealer_hand = []
  deck = initialize_deck(DECK)

  loop do
    deal_first2cards(deck, player_hand, dealer_hand)
    display_hands(player_hand, dealer_hand)
    player_plays(deck, player_hand, dealer_hand)
    display_player_result(player_hand)
    break if busted?(player_hand)
    dealer_plays(deck, dealer_hand)
    display_dealer_result(dealer_hand)
    break if busted?(dealer_hand)
    display_final_result(player_hand, dealer_hand)
    break
  end
  break if play_again == false
end

prompt("Thanks for playing 21!")
puts ""
