require 'rails_helper'

RSpec.describe Song, type: :model do
  it "has a name" do
    @song = Song.new(name: "Hotline Bling")
    expect(@song.name).to eq("Hotline Bling")
  end
end
