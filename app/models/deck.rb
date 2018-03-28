class Deck < ApplicationRecord

  has_many :cards

  def size
    cards.size
  end

end
