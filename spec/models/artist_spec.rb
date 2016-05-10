require 'rails_helper'

RSpec.describe Artist, type: :model do
#  pending "add some examples to (or delete) #{__FILE__}"

  describe Artist do
    before(:each) do
      @artist = Artist.create(name: "Billy Joel", bio: "Just and old singer from New York")
    end

    it 'can be created' do
      expect(@artist).to be_valid
    end

    it 'has a name and bio' do
      expect(@artist.name).to eq("Billy Joel")
      expect(@artist.bio).to eq("Just and old singer from New York")
    end
  end

end
