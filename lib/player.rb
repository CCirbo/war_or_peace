class Player
   attr_reader :name,
               :deck



   def initialize(name, deck)
    @name = name
    @deck = deck
   end

#has lost checks if player has cards, returns false if player has at least
#one card.
   def has_lost?
 
    if @deck.cards.length >= 1
        false
    else    
        true
    end    
   end
   
end