require 'rails_helper'

RSpec.describe Genre, type: :model do
  it 'should be able to create a new Genre' do
    @genre = Genre.create(name: "Regae")
    expect(@genre).to be_valid
  end
end
