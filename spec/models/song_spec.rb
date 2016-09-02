require 'rails_helper'

RSpec.describe Song, type: :model do
  it 'should be able to create a new Song' do
    @song = Song.create(name: "Don't Worry, Be Happy")
    expect(@song).to be_valid
  end
end
