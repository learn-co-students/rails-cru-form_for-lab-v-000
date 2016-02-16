require 'rails_helper'

RSpec.describe Genre, type: :model do
  before(:each) do
    @genre = Genre.create(name: "Jazz")
  end

  it 'can be created' do
    expect(@genre).to be_valid
  end
end
