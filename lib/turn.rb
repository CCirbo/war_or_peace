require "pry"
class Turn
    attr_reader :player1,
                :player2,
                :spoils_of_war
              
                
   def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @spoils_of_war = []

   end

   
#    def basic_turn
#     # @player1.deck.rank_of_card_at(0)
#     #players' decks are not the same rank
#    end

#    def war_turn
#     # @player1.deck.rank_of_card_at(0)
#     # turn occurs when both players’ are the same.
#    end

#    def mutually_assured_destruction
#     # @deck.rank_of_card_at(0) AND @deck.rank_of_card_at(2)
#     # occurs when both players’ are the same.
#    end

   def type 
    if @player1.deck.rank_of_card_at(0) != @player2.deck.rank_of_card_at(0)
      return :basic
    elsif  @player1.deck.rank_of_card_at(0) == @player2.deck.rank_of_card_at(0) &&
      @player1.deck.rank_of_card_at(2) == @player2.deck.rank_of_card_at(2)
      return :mutually_assured_destruction
    else @player1.deck.rank_of_card_at(0) == @player2.deck.rank_of_card_at(0)
      return :war
      
    end  
   end


   def winner
    if self.type == :basic
      player1 #if @player1.deck.rank_of_card_at(0) if player 1 card greater than player 2 card and whichever has
      #the higher rank wins
    # else 
    elsif self.type == :mutually_assured_destruction
      "No Winner"  
    else self.type == :war
       player2 
    end
    # if the turn has a type of :basic, it will return whichever player has a higher rank_of_card_at(0)
    #@player1.deck.rank_of_card_at(0) > @player2.deck.rank_of_card_at(0)
    # if the turn has a type of :war the winner will be whichever player has a higher rank_of_card_at(2)
    # if the turn has a type of :mutually_assured_destruction the method will return No Winner.
   end

   def pile_cards
    #pile_cards: when this method is called, cards will be sent from the players’ decks into the 
    # @spoils_of_war based on these rules
    if self.type == :basic
      @spoils_of_war << @player1.deck.remove_card
      @spoils_of_war << @player2.deck.remove_card
    end
    #for a :basic turn, each player will send one card (the top card) to the spoils pile
    #for a :war turn, each player will send three cards (the top three cards) to the spoils pile
    # @spoils_of_war << 
    #for a :mutually_assured_destruction turn, each player will remove three cards from play
    #  (the top three cards in their deck). These cards are not sent to the spoils pile, 
    #  they are simply removed from each players’ deck.
   end

    def award_spoils
     # award_spoils: this method will add each of the cards in the @spoils_of_war array to the winner of the turn.
     #if player1 wins, we have to do this @player1.deck << @spoils_of_war cards go to them.
    end
end