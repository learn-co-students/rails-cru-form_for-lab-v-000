require 'rails_helper'

RSpec.describe Artist, type: :model do
  it 'should be able to create a new Artist' do
    @artist = Artist.create(name: "Bob Marley", bio: "Don't worry, be happy!")
    expect(@artist).to be_valid
  end
end
