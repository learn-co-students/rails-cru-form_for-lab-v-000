require 'rails_helper'

RSpec.describe Song, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe Song do
    before(:each) do
      @artist = Artist.create!(name: "Taylor Swift", bio: "Born on December 13, 1989")
      @genre = Genre.create!(name: "Pop")
      @song = Song.create!(name: "Red", artist_id: @artist.id, genre_id: @genre.id)
    end

    it 'can be created' do
      expect(@song).to be_valid
    end
  end
end
