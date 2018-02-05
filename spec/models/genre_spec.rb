require 'rails_helper'

RSpec.describe Genre, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe Genre do
    before(:each) do
      @genre = Genre.create!(name: "Pop")
    end

    it 'can be created' do
      expect(@genre).to be_valid
    end
  end
end
