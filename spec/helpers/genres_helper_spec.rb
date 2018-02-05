require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the GenresHelper. For example:
#
# describe GenresHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe GenresHelper, type: :helper do
#  pending "add some examples to (or delete) #{__FILE__}"

  describe "#genre_name" do

    context "when the genre is present" do
      it "returns the genre's name" do
        @genre = Genre.create(name: "pop")
        expect(helper.genre_name(@genre)).to eq("pop")
      end
    end
    context "when the genre doesn;t exist" do
      it "returns nil" do
        @genre = nil
        expect(helper.genre_name(@genre)).to eq(nil)
      end
    end

  end
end
