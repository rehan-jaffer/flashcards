class Api::DecksController < ApplicationController
  def index
    @decks = Deck.all
  end
end
