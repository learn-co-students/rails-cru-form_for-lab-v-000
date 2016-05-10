require 'rails_helper'

RSpec.describe Song, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"

  before do
    @song = Song.create(name: "Still Rock n' Roll to me")
  end

  it "creates a new song with a name" do
    expect(@song.name).to eq("Still Rock n' Roll to me")
  end

  before do
    @song.artist = Artist.new(name: "Billy Joel")
  end

  it "associates the song to its artist" do
    expect(@song.artist.name).to eq("Billy Joel")
  end


end
