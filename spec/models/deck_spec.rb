require 'rails_helper'

RSpec.describe Deck, type: :model do

  it { should have_many(:cards) }

  describe "instance methods" do

    before(:all) do
      @deck = Deck.create!(name: "Test Deck")
      @card = Card.create!(front: "some", back: "thing", deck_id: @deck.id)
    end

    it "returns the size of the deck correctly" do
      expect(@deck.size).to eq 1
    end

    it "increases of a card is added" do
      Card.create(front: "some", back: "thing", deck_id: @deck.id)
      expect(@deck.size).to eq 2
    end

    it "decreases if a card is removed" do
      @card.destroy
      expect(@deck.size).to eq 0
    end

  end

end
