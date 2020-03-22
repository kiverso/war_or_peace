require './lib/card.rb'
require './lib/deck.rb'
require './lib/player.rb'
require './lib/turn.rb'


# standard_values = [*(2..10), 'Jack', 'Queen', 'King', 'Ace']
# standard_suits = ['Clubs', 'Hearts', 'Diamonds', 'Spades']
# all_cards = []
#
# standard_suits.each do|suit|
#   standard_values.each do |value|
#     all_cards << Card.new(suit, value, standard_values.index(value) + 2)
#   end
# end
#
# full_deck = Deck.new(all_cards)
# shuffled_deck = Deck.new(full_deck.cards.shuffle)
card1 = Card.new(:heart, 'Jack', 11)
card2 = Card.new(:heart, '10', 10)
card3 = Card.new(:heart, '9', 9)
card4 = Card.new(:diamond, 'Jack', 11)
card5 = Card.new(:heart, '8', 8)
card6 = Card.new(:diamond, '8', 8)
card7 = Card.new(:heart, '3', 3)
card8 = Card.new(:diamond, '2', 2)

deck1 = Deck.new([card1, card2, card5, card8])
deck2 = Deck.new([card4, card3, card6, card7])

# deck1 = Deck.new([])
# deck2 = Deck.new([])
#
# while shuffled_deck.cards.length > 0 do
#   deck1.add_card(shuffled_deck.remove_card)
#   deck2.add_card(shuffled_deck.remove_card)
# end
#
player1 = Player.new("Kyle", deck1)
player2 = Player.new("Geoff", deck2)

p "Welcome to War! (or Peace) This game will be played with 52 cards."
p "The players today are #{player1.name}, and #{player2.name}."
prompt =  "Type 'GO' to start the game!"
go = ""
until go == "GO" || go == "go" || go == "Go"
  p prompt
  go = gets.chomp
end
# p "working"
# require "pry"; binding.pry
turn = Turn.new(player1, player2)
turn.start
