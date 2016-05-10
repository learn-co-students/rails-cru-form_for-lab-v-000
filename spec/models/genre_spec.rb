require 'rails_helper'

RSpec.describe Genre, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"

  describe Genre do
    before(:each) do
      @genre = Genre.create(name: "Rock n' Roll")
    end

    it "is a valid class with a name" do
      expect(@genre).to be_valid
      expect(@genre.name).to eq("Rock n' Roll")
    end

  end
end
