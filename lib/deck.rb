require './lib/card'
class Deck
  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def rank_of_card_at(n)
    @cards[n].rank
  end

  def high_ranking_cards
    high_rank_cards = []
    @cards.each do |card|
      if card.rank >= 11
        high_rank_cards << card
      end
    end
    high_rank_cards
  end

  def percent_high_ranking
    (high_ranking_cards.length.to_f / @cards.length.to_f * 100).round(2)
  end

  def remove_card
    @cards.shift
  end

  def add_card(card)
    @cards << card
  end

end
