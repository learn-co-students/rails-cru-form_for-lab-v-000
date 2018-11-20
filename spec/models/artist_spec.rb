require 'rails_helper'

RSpec.describe Artist, type: :model do
  it "has a name" do
    @artist = Artist.new
    @artist.name = "Amit Singh"
    expect(@artist.name).to eq("Amit Singh")
  end 
end
