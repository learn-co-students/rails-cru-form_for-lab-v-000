require 'rails_helper'

RSpec.describe Artist, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  it "has a name" do
    @artist = Artist.create(name:"Lindsey Stirling", bio:"Awesome violinist-ballerina combo-fusion person.")
    expect(@artist.name).to eq("Lindsey Stirling")
  end

  it "has a bio" do
    @artist = Artist.create(name:"Lindsey Stirling", bio:"Awesome violinist-ballerina combo-fusion person.")
    expect(@artist.bio).to eq("Awesome violinist-ballerina combo-fusion person.")
  end
end
