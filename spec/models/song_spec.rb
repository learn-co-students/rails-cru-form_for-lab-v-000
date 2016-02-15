require 'rails_helper'

RSpec.describe Song, type: :model do
  before(:each) do
    @song = Song.create(name: "Freddie Freeloader")
  end

  it 'can be created' do
    expect(@song).to be_valid
  end
end
