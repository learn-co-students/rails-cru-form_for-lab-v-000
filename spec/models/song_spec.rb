require 'rails_helper'

RSpec.describe Song, type: :model do
  it "creates a song" do
    song = Song.create(name: "song name", artist_id: 1, genre_id: 1)
    artist = Artist.create(name: "adele", bio: "adele bio")
    genre = Genre.create(name: "pop")

    expect(song.name).to eq("song name")
    expect(song.artist).to eq(artist)
    expect(song.genre).to eq(genre)
  end
end
