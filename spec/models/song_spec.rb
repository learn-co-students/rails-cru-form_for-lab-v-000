require 'rails_helper'

RSpec.describe Song, type: :model do
  before do
    Song.create(:name => 'Flight of the Valkyries', :artist_id => 1, :genre_id => 1)
  end

  it 'can create a new song' do
    expect(Song.last.name).to eq("Flight of the Valkyries")
    expect(Song.last.artist_id).to eq(1)
    expect(Song.last.genre_id).to eq(1)
  end
end
