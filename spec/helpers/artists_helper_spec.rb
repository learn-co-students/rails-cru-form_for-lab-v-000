require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the ArtistsHelper. For example:
#
# describe ArtistsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end



describe 'delete' do
  before do
    @artist = Artist.create(name: "My Artist", bio: "My artist bio")
  end

  it 'deletes artist' do
    @artist.delete

  end
end
