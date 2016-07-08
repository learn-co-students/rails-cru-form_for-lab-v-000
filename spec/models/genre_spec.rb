require 'rails_helper'

RSpec.describe Genre, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"

  before do
    @genre = Genre.create(name: "My Genre")
  end
  it 'can be created' do
    expect(@genre).to be_valid
  end
end
