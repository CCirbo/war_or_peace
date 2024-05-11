class Deck
    attr_reader :cards

    def initialize(cards)
        @cards = cards
    end

    def rank_of_card_at(index)
        @cards[index].rank
    end
      
    def high_ranking_cards
        high_cards = []
        x = @cards.each do |card|
            if card.rank >= 11 
                high_cards << card 
            end    
        end
        high_cards

        # foo = @cards.map do |card|
        #     if card.rank >= 11 
        #         card  
        #     end    
        # end.compact

        # bar = @cards.select do |card|
        #     card.rank >= 11
        # end
        # bar 
    end

    def percent_high_ranking_cards
        #might need a to_f to make a string into a float
        #need a mehthod to show
        #100 percent divided by number of (cards) because right now 
        #I have three cards, times (high cards) which right now is 
        #two cards equals 66.67 percent but I need to round to two 
        #decimal places to get to 66.67 percent. Write the code so that 
        #when we get to four cards, the percentage will be 50 percent
        # 100.to_f / 3 or 100_fdiv(3)

        #100.00 / number from @cards * number from 
        #high_ranking_cards.round(2)

    end
        
end

