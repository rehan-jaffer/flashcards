require 'rails_helper'

RSpec.describe Deck, type: :model do

  it { should have_many(:cards) }

end
