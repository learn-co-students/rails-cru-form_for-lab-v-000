require 'rails_helper'

describe SongsController do

  describe "POST create" do
    context "with valid attributes" do
      it "creates a new song" do
        expect{
          post :create, { :song => { :name => "Freddie Freeloader" } }
        }.to change(Song,:count).by(1)
      end
      
      it "redirects to the new song" do
        post :create, { :song => { :name => "Freddie Freeloader" } }
        expect(response).to redirect_to Song.last
      end
    end
  end

end
