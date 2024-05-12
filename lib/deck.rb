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
        @cards.each do |card|
            if card.rank >= 11 
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
    end    
 
    def remove_card
        @cards.shift
    end

    def add_card(card)
        @cards.push(card)
    end
           
end

