=begin
We started working on a card game but got stuck. 
Check out why the code below raises a TypeError.
Once you get the program to run and produce a sum,
you might notice that the sum is off: 
It's lower than it should be. Why is that?
=end

cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

deck = { :hearts   => cards.clone, # value in each key is same array object, 
                                    #therefore change every `cards` to `cards.clone` 
         :diamonds => cards.clone,
         :clubs    => cards.clone,
         :spades   => cards.clone }

def score(card)
  case card
  when :ace   then 11
  when :king  then 10
  when :queen then 10
  when :jack  then 10
  else card
  end
end

# Pick one random card per suit

player_cards = []                 # init array
deck.keys.each do |suit|          # iterate over array of suits, each suit is a symbol
  cards = deck[suit]              # cards reassigned to array of values at curretn key, i.e. the suit
  cards.shuffle!                  # cards order is changed in place (mutated)
  player_cards << cards.pop       # last card in cards is removed from cards and value appended to player_cards
end

# Determine the score of the remaining cards in the deck
sum = deck.reduce(0) do |sum, (_, remaining_cards)|  # reduce called on hash,  `sum` & `-`, `remaining_cards` initialized
    score = remaining_cards.map do |card|            # loc var `score` init., assigned cards of one suit to transform
    score(card)                                      # method `score` is called to transform determine number value of each card
  end

  sum += score.sum                                   # sum reassigned to score for current iteration (suit)
end

puts sum