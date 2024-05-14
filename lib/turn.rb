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

   
    # at basic_turn  
    # both @player1.deck.rank_of_card_at(0) and @player2.deck.rank_of_card_at(0) not matching,
    # highest rank wins. SO
    # if @player1.deck.rank_of_card_at(0) > @player2.deck.rank_of_card_at(0) 
    # @player1 is winner
    # else @player2 is winner

    # then pile_cards << @player1.deck.remove_card(0) and @player2.deck.remove_card(0) THEN

    # @spoils_of_war << pile_cards THEN
    # 
    # winner is awarded the award_spoils array of cards to their deck.
    # @player1.deck << @spoils_of_war

    # I have a rank_of_card_at method in deck, so @player.deck.rank_of_card_at(0) should work here
    # to let Turn see card rank at 0 index.  I also have remove_card in deck so something like
    # @player1.deck.remove_card and @player.deck.remove_card and shovel that into pile_cards.

    # at war_turn 
    # @player1.deck.rank_of_card_at(0) and @player2.deck.rank_of_card_at(0)
    # are the same. Player1 and player2 then show two more cards, at deck.rank_of_card_at(2) 
    # whoever has highest rank at index (2) wins. Both player1 and player2 cards (all three)
    # are sent into the pile_cards and pile_cards are put into the spoils_of_war array. Winner 
    # is awarded the award_spoils array of cards to their deck.   

    # at mutually_assured_destruction turn
    # player1.deck.rank_of_card_at(0) AND player2.deck.rank_of_card_at(2) are the same.
    # there is no winner. Player1 and player2 top three cards are removed from their decks
    # but are not put into the spoils_of_war array, they are just removed from players decks.
   

   def type 
    if @player1.deck.rank_of_card_at(0) != @player2.deck.rank_of_card_at(0)
        :basic
    elsif  @player1.deck.rank_of_card_at(0) == @player2.deck.rank_of_card_at(0) &&
      @player1.deck.rank_of_card_at(2) == @player2.deck.rank_of_card_at(2)
        :mutually_assured_destruction
    else @player1.deck.rank_of_card_at(0) == @player2.deck.rank_of_card_at(0)
        :war
    end  
   end


   def winner
    if self.type == :basic
      player1
      # @player1.deck.rank_of_card_at(0) > @player2.deck.rank_of_card_at(0) 
      #if @player1.deck.rank_of_card_at(0) if player 1 card greater than player 2 card and whichever has
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
      @spoils_of_war << @player1.deck.remove_card(0)
      @spoils_of_war << @player2.deck.remove_card(0)
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