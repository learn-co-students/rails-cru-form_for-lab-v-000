require 'rails_helper'

RSpec.describe Genre, type: :model do
  before do
    Genre.create(:name => 'Classical')
  end

  it 'can create a new genre' do
    expect(Genre.last.name).to eq("Classical")
  end
end
