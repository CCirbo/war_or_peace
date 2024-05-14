require 'pry'
class Deck
    attr_reader :cards
                # :high_cards

    def initialize(cards)
        @cards = cards
    
        # @high_cards = high_cards
    end

    def rank_of_card_at(index)
        @cards[index].rank
     
    end
      
    def high_ranking_cards
        high_cards = []
        @cards.each do |card| #Looking at each card, then moving cards 11 and higher
            if card.rank >= 11    #into the high cards array
                high_cards << card 
            end  
        end    
        high_cards
    end        
        # foo = @cards.map do |card|
        #     if card.rank >= 11 
        #         card  
        #     end    
        # end.compact

        # bar = @cards.select do |card|
        #     card.rank >= 11
        # end
        # bar 
    # end

    def percent_high_ranking_cards
         (self.high_ranking_cards.count.to_f / @cards.count* 100).round(2)
    end    #So proud of myself for this one!!
 
    def remove_card
        @cards.shift
        #I want to do a .shift here to remove the queen card which is the first
        #card in my group. 
    end

    def add_card(card)
        @cards.push(card)
         # this method will add one card to the bottom (end) of the deck
        #use .push to add a card to the bottom of the deck
        # pry(main)> card4 = Card.new(:club, '5', 5)
        # #=> #<Card:0x007fbfd2963978 @rank=5, @suit=:club, @value="5">
       
    end
           
end

