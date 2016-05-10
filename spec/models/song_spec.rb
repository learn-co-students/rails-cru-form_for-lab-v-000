require 'rails_helper'

RSpec.describe Song, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  before do
    @song=Song.create(name:"Red Bull of Juarez")
  end
  
  it 'can be created' do
    expect(@song.name).to eq("Red Bull of Juarez")
  end
end
