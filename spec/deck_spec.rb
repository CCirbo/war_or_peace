require "./lib/card"
require "./lib/deck"
require "pry"

RSpec.configure do |config|
    config.formatter = :documentation
end

RSpec.describe Deck do
    before (:each) do
       @card1 = Card.new(:diamond, 'Queen', 12)
       @card2 = Card.new(:spade, '3', 3) 
       @card3 = Card.new(:heart, 'Ace', 14) 
       @card4 = Card.new(:club, '5', 5)
       @cards = [@card1, @card2, @card3, @card4]
       @deck = Deck.new(@cards)   
    end    

    it "exists"  do
        # card1 = Card.new(:diamond, 'Queen', 12)
        # card2 = Card.new(:spade, '3', 3) 
        # card3 = Card.new(:heart, 'Ace', 14) 
        # cards = [card1, card2, card3]
        # deck = Deck.new(cards)
        expect(@deck).to be_an_instance_of(Deck)    
    end

    it "has cards attribute" do 
        # card1 = Card.new(:diamond, 'Queen', 12)
        # card2 = Card.new(:spade, '3', 3) 
        # card3 = Card.new(:heart, 'Ace', 14) 
        # cards = [card1, card2, card3]
        # deck = Deck.new(cards)
        expect(@deck.cards).to eq(@cards)
    end

    it "checks rank of card at" do
        # card1 = Card.new(:diamond, 'Queen', 12)
        # card2 = Card.new(:spade, '3', 3) 
        # card3 = Card.new(:heart, 'Ace', 14) 
        # cards = [card1, card2, card3]
        # deck = Deck.new(cards) 
        expect(@deck.rank_of_card_at(2)).to eq(14)
        expect(@deck.rank_of_card_at(0)).to eq(12)
        expect(@deck.rank_of_card_at(1)).to eq(3)
    end    

    it "checks high ranking cards" do   #array of cards in the deck that have a rank of 11 or above 
        # card1 = Card.new(:diamond, 'Queen', 12)
        # card2 = Card.new(:spade, '3', 3) 
        # card3 = Card.new(:heart, 'Ace', 14) 
        # cards = [card1, card2, card3]
        # deck = Deck.new(cards) 
        expect(@deck.high_ranking_cards).to eq([@card1, @card3])
    end

    it "percentage of high ranking cards" do
        expect(@deck.high_ranking_cards).to be a (percent_high_ranking_cards)
        #66.67 percent
    end

    it "removes a card" do
        # this method will remove the top card from the deck
        #I want to do a .shift here to remove the queen card which is the first
        #card in my group. 
    end

    #pry(main)> deck.cards
    #=> [#<Card:0x007fbfd19f4fa0...>, #<Card:0x007fbfd18555a0...>]

    #  pry(main)> deck.high_ranking_cards
    #  #=> [#<Card:0x007fbfd18555a0...>]
     
    #  pry(main)> deck.percent_high_ranking
    #  #=> 50.0
     
 
    it "adds a card" do
        # this method will add one card to the bottom (end) of the deck
        #use .push to add a card to the bottom of the deck
        # pry(main)> card4 = Card.new(:club, '5', 5)
        # #=> #<Card:0x007fbfd2963978 @rank=5, @suit=:club, @value="5">
    end    
        # pry(main)> deck.add_card(card4)

    #     pry(main)> deck.cards
    #     #=> [#<Card:0x007fbfd19f4fa0...>, #<Card:0x007fbfd18555a0...>, #<Card:0x007fbfd2963978...>]

    #     pry(main)> deck.high_ranking_cards
    #     #=> [#<Card:0x007fbfd18555a0...>]

    #     pry(main)> deck.percent_high_ranking
    #     #=> 33.33
  

end
