require 'rails_helper'

describe ArtistsController do

  describe "POST create" do
    context "with valid attributes" do
      it "creates a new artist" do
        expect{
          post :create, { :artist => { :name => "Miles Davis", :bio => "I'll play it first and tell you what it is later." } }
        }.to change(Artist,:count).by(1)
      end
      
      it "redirects to the new artist" do
        post :create, { :artist => { :name => "Miles Davis", :bio => "I'll play it first and tell you what it is later." } }
        expect(response).to redirect_to Artist.last
      end
    end
  end

end
