require 'rails_helper'

RSpec.describe Genre, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it "has a name" do
    @genre = Genre.create(name:"Dubstep")
    expect(@genre.name).to eq("Dubstep")
  end

end
