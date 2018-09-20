require 'rails_helper'

RSpec.describe Genre, type: :model do
  it "creates a new genre" do
    pop = Genre.new(name: "pop")

    expect(pop.name).to eq("pop")
  end
end
