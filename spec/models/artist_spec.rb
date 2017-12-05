require 'rails_helper'

RSpec.describe Artist, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe Artist do
    before(:each) do
      @artist = Artist.create!(name: "Taylor Swift", bio: "Born on December 13, 1989")
    end

    it 'can be created' do
      expect(@artist).to be_valid
    end
  end
end
