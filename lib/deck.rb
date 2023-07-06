class Deck
  attr_reader :cards
  def initialize(cards)
    @cards = cards
    
    
  end

 
  def rank_of_card_at(index)
    @cards[index].rank
  end
  

  def high_ranking_cards
  #  @cards.select{ |card| card.rank >= 11}
    @cards.find_all do |card|
      card.rank > 10
      # require 'pry';binding.pry
    end
  end

  def percent_high_ranking
    ((high_ranking_cards.length.to_f / cards.length.to_f)*100).round(2)
  end

  #     if card.rank > 10

  #     end
  #   if @cards.select { |card| card.rank >= 11}
  #   card *
  #   end

  def remove_card
    @cards.shift
  end

  def add_card(card4)
    @cards << card4
  end

  # require 'pry';binding.pry
  # def remove_card

  # end







##Interaction patern

end
##

