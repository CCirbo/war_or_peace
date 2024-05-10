require "./lib/card"
require "./lib/deck"
require "pry"
RSpec.describe Deck do
    it "exists"  do
        card1 = Card.new(:diamond, 'Queen', 12)
        card2 = Card.new(:spade, '3', 3) 
        card3 = Card.new(:heart, 'Ace', 14) 
        cards = [card1, card2, card3]
        deck = Deck.new(cards)
        expect(deck).to be_an_instance_of(Deck)    
    end

    it "has cards attribute" do 
        card1 = Card.new(:diamond, 'Queen', 12)
        card2 = Card.new(:spade, '3', 3) 
        card3 = Card.new(:heart, 'Ace', 14) 
        cards = [card1, card2, card3]
        deck = Deck.new(cards)
        expect(deck.cards).to eq(cards)
    end

    it "checking_rank_of_card_at" do
        card1 = Card.new(:diamond, 'Queen', 12)
        card2 = Card.new(:spade, '3', 3) 
        card3 = Card.new(:heart, 'Ace', 14) 
        cards = [card1, card2, card3]
        deck = Deck.new(cards) 
        expect(deck.rank_of_card_at(2)).to eq(14)
        expect(deck.rank_of_card_at(0)).to eq(12)
        expect(deck.rank_of_card_at(1)).to eq(3)
    end    

end