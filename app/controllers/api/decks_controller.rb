class Api::DecksController < ApplicationController

  def show
    @deck = Deck.find(params[:id])
  end

  def index
    @decks = Deck.all
  end

end
