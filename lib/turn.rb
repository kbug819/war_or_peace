class Turn
  attr_reader :player1, :player2, :spoils_of_war
  def initialize (player1, player2)
    @player1 = player1
    @player2 = player2
    @spoils_of_war = []
  end


  def type
    if player1.deck.rank_of_card_at(0 && 2) == player2.deck.rank_of_card_at(0 && 2)
      :mututally_assured_destruction
    elsif player1.deck.rank_of_card_at(0) != player2.deck.rank_of_card_at(0)
      :basic 
    elsif player1.deck.rank_of_card_at(0) == player2.deck.rank_of_card_at(0)
      :war
    end
  end

  def winner
    if type == :basic
      if player1.deck.rank_of_card_at(0) > player2.deck.rank_of_card_at(0)
        player1
      else
        player2
      end
    elsif type == :war
      if player1.deck.rank_of_card_at(2) > player2.deck.rank_of_card_at(2)
        player1
      else
        player2
      end
    else
      "No Winner!"
    end
  end


  def pile_cards
    if type == :basic
      @spoils_of_war << player1.deck.cards[0]
      @spoils_of_war << player2.deck.cards[0]
    # elsif type == :war
    #   @spoils_of_war << player1.deck.cards[0,1,2]
    #   @spoils_of_war << player2.deck.cards[0,1,2]
    # else 
    #   player1.deck.cards
    end
  end

  def award_spoils(winner)
    winner.deck.cards + @spoils_of_war
    require 'pry';binding.pry
  end

end