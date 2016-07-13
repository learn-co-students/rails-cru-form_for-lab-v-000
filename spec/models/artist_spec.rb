require 'rails_helper'

RSpec.describe Artist, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  before do
    @artist = Artist.create(name: "My Artist", bio: "My artist bio")
  end
  
  it 'can be created' do
    expect(@artist.name).to eq("My Artist")
  end
end
