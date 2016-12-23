require 'rails_helper'

RSpec.describe Artist, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  before do
    Artist.create(:name => 'Picasso', :bio => "His biography")
  end

  it 'can create a new artist' do
    expect(Artist.last.name).to eq("Picasso")
    expect(Artist.last.bio).to eq("His biography")
  end
end
