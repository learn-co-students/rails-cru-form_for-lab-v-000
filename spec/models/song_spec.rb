require 'rails_helper'

RSpec.describe Song, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"

  before do
    @artist = Artist.create(name: "My Artist", bio: "My artist bio")
    @genre = Genre.create(name: "My Genre")
    @song = Song.create(name: "My Song", artist_id: @artist.id, genre_id: @genre.id)
  end

  it 'can be created' do
    expect(@song).to be_valid
  end
end
