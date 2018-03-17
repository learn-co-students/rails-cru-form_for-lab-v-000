require 'rails_helper'

RSpec.describe Song, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  before do
    @artist = Artist.create(name: "Skrillex", bio: "I just make noises and people buy them.")
    @genre = Genre.create(name: "Dubstep")
    @song = Song.create(name: "Squeekedies", artist_id:@artist.id, genre_id:@genre.id)
  end

  it "has a name" do
    expect(@song.name).to eq("Squeekedies")
  end

  it "belongs to an genre" do
    expect(@song.genre.name).to eq("Dubstep")
  end

  it "belongs to a artist" do
    expect(@song.artist.name).to eq("Skrillex")
  end
end
