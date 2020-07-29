=begin
General:
create game 21 similar to blackjack
no double downs or splits
values of cards 2 - 10, 10 (Jack, Queen, King), Ace value is one or eleven
programme calculates value of ace for player

Flow of Game:
each player gets two cards, player can see second dealer card but not first one
player turn
  chooses to hit or stay
  calculate result
  repeat until bust or stay
  if player busts dealer wins
computer turn
  if result >= 17 stay
  otherwise hit
compare results
  if dealer busts, player wins
  if both player/dealer <=21, higher result wins
  same result is draw



PEDAC deal_first2cards(deck, player_hand, dealer_hand)
# inputs:
sorted deck of cards, player and dealer empty hands
# outputs:
player and dealer hands with first four cards of deck, alternating

# rules:
player gets first card, dealer second, then repeat

# Example / Test Case:
player_cards = ['S3', 'HA'] # or any other combinations
dealer_cards = ['D3', 'CA'] # or any other combinations

# Data Structures:
input deck array randomly sorted, and two empty arrays (player / dealer)
inputs arrays mutated to add 2 dealt cards each
deck mutated to have top 4 cards removed

# Algorithm:
sorted deck as array, player_hand as array, dealer_hand as array, all as method args
remove first card from 0 index of array (mutate caller) 
put card in player_hand array
put card in player dealer_hand array
repeat once



PEDAC display_hands(dealer_cards, player_cards)
# inputs:
player_cards and dealer_cards as arguments
# outputs:
display of hands of each player
# rules:
player can see second dealer card but not first one
both of player cards are seen

# Example / Test Case:
Dealer Cards: card face down, C3
Player Cards: SJ, SA

# Data Structures:
input arrays of player and dealer cards as args
output output to screen 

# Algorithm:
string for Dealer cards with only 2nd card shown, array[1]
string for player cards with both cards indicated
=end 



