require 'rspec'
require 'poker'

RSpec.describe Card do
  describe "#initialize" do
    it "has a suit"

    it "has a value"

  end

  describe "#to_s" do
  end

end

RSpec.describe Deck do
  describe "#initialize" do

    it "ensures that each card is uniq"

    it "populates the deck"

  end
  describe "#populate" do
    it "fills the deck with exactly 52 cards"


  end

  describe "#shuffle" do
    it "Shuffles the deck"

  end

  describe "#draw_card" do
    it "takes n number of cards to draw"

    it "gives n number of cards"

    it "removes n number of cards from deck"

  end

end

RSpec.describe Hand do
  describe "#initialize" do
    it "takes 5 cards"


  end

  describe "#hand_type" do
    it "accesses the five individual cards"

    it "displays correct type"

    it "select highest possibility"

  end

  describe "#assign_rank" do
    it "receives a hand type"

    it "assigns ranks based on hand type"
  end

  describe "#compare" do
    it "receives a opponent hand value"

    it "outputs winner/loser"

  end
end

RSpec.describe Player do
  describe "#initialize" do
    it "takes a name"

    it "receive its inital hand"

    it "play status is set to true"
  end

  describe "#fold" do
    it "receives a user input to fold"

    it "empties hand"

    it "set play status to false"
  end

  describe "#see" do
    it "receives current bet"

    it "receives user input" #TODO Maybe in game file.

    it "sets current player bet to current bet"
  end

  describe "#raise" do
    it "receives current bet"

    it "receives user input"

    it "ensures player bet is greater than current bet"

    it "sets player bet to input"

    it "set current bet to player bet"

  end
end

RSpec.describe Game do
  describe "#initialize" do
    it "generates a deck"

    it "receive number of players"

    it "generates the correct number of players"

    it "sets current bet to zero"

    it "sets starting dealer"
  end

  describe "#rotate_dealer" do
    it "updates current dealer"

    it "only rotates by one player"
  end

  describe "#initial_deal" do
    it "calls on deck#draw_card method"

    it "gives each player 5 cards"

  end


  describe "#discard" do
    it "receives a user input between 0 - 3"

    it "gives argument number of cards"

  end

  describe "#take_cards" do
    it "receives an argument"

    it "receives argument number of cards"
  end
  
  describe "#take_turn" do

  end
end
