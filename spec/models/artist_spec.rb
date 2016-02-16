require 'rails_helper'

RSpec.describe Artist, type: :model do
  before(:each) do
    @artist = Artist.create(name: "Miles Davis", bio: "I'll play it first and tell you what it is later.")
  end

  it 'can be created' do
    expect(@artist).to be_valid
  end
end
