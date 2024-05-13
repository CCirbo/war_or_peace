require "./lib/card"
require "./lib/deck"
require "./lib/player"
require "./lib/turn"

require "pry"

RSpec.configure do |config|
    config.formatter = :documentation
end

RSpec.describe Turn do
    before (:each) do
    card1 = Card.new(:heart, 'Jack', 11)
    card2 = Card.new(:heart, '10', 10)
    card3 = Card.new(:heart, '9', 9) 
    card4 = Card.new(:diamond, 'Jack', 11) 
    card5 = Card.new(:heart, '8', 8) 
    card6 = Card.new(:diamond, 'Queen', 12)
    card7 = Card.new(:heart, '3', 3) 
    card8 = Card.new(:diamond, '2', 2)  
    @deck1 = Deck.new([card1, card2, card5, card8]) 
    @deck2 = Deck.new([card3, card4, card6, card7])  
    @player1 = Player.new("Megan", @deck1)
    @player2 = Player.new("Aurora", @deck2)
    @turn = Turn.new(@player1, @player2)  
    end  

    it "it exists" do
        expect(@turn).to be_an_instance_of(Turn)    
    # pry(main)> turn.player1
    #=> #<Player:0x007fa3edae29d0 @deck=#<Deck:0x007fa3eda472c8...>, @name="Megan">
    end

    it "has attributes" do 
        expect(@player1.name).to eq("Megan")
        expect(@player1.deck).to eq(@deck1)
        expect(@player2.name).to eq("Aurora")
        expect(@player2.deck).to eq(@deck2)
    end

    xit "player1 turn" do
        expect(@turn)
    end

    it "spoils_of_war" do 
        expect(@turn.spoils_of_war).to eq([])
    end

    xit "turn type" do
        expect(@turn.type).to be a(type)
    end

    xit "basic turn" do
        expect(@turn.type).to eq(:basic)
    end

    xit "war turn" do
        expect(@turn.type).to eq(:war)
    end

    xit "destruction turn" do
    expect(@turn.type).to eq(:mutually_assured_destruction)
    end 
end



    
    # pry(main)> turn.type
#=> :basic

# pry(main)> winner = turn.winner
# #=> #<Player:0x007fa3edae29d0 @deck=#<Deck:0x007fa3eda472c8...>, @name="Megan">

# pry(main)> turn.pile_cards

# pry(main)> turn.spoils_of_war
# #=> [#<Card:0x007fa3edaa0df0 @rank=11, @suit=:heart, @value="Jack">, #<Card:0x007fa3ed98d9b8 @rank=9, @suit=:heart, @value="9">]

# pry(main)> turn.award_spoils(winner)

# pry(main)> player1.deck
# #=> #<Deck:0x007fa3eda472c8 @cards=[#<Card:0x007fa3eda519a8...>, #<Card:0x007fa3edb263d8...>, #<Card:0x007fa3eda89308...>, #<Card:0x007fa3edaa0df0...>, #<Card:0x007fa3ed98d9b8...>]>
# pry(main)> player2.deck
#=> #<Deck:0x007fa3ee11ee48 @cards=[#<Card:0x007fa3ee14ef80...>, #<Card:0x007fa3eda3e1f0...>, #<Card:0x007fa3edad1cc0...>]>
    


