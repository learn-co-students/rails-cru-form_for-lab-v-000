require 'rails_helper'

describe GenresController do

  describe "POST create" do
    context "with valid attributes" do
      it "creates a new genre" do
        expect{
          post :create, { :genre => { :name => "Jazz" } }
        }.to change(Genre,:count).by(1)
      end
      
      it "redirects to the new genre" do
        post :create, { :genre => { :name => "Jazz" } }
        expect(response).to redirect_to Genre.last
      end
    end
  end

end
