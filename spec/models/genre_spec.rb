require 'rails_helper'

RSpec.describe Genre, type: :model do
  it "has a name" do
    @genre = Genre.new(name: "Rap")
    expect(@genre.name).to eq("Rap")
  end
end
