require 'rails_helper'

RSpec.describe Genre, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  before do
    @genre = Genre.create(name: "Hip Hop")
  end
  it '#song_count' do
    @genre.songs << Song.create(name: "Something By That Person Who Sings Stuff")
    @genre.save

    expect(@genre.song_count).to eq(1)
  end
end
