require 'rails_helper'

RSpec.describe Artist, type: :model do
  it "has a name" do
    @artist = Artist.new(name: "Michael Jackson")
    expect(@artist.name).to eq("Michael Jackson")
  end
end
