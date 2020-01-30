class ArtistsController < ApplicationController
  before_action :find_artist, only: [:show, :edit, :update]

 def new
   @artist = Artist.new
 end

 def create
   @artist = Artist.create(name: params[:artist][:name], bio: params[:artist][:bio])
   redirect_to artist_path(@artist)
 end


 def show
 end

 def edit
 end

 def update
   @artist.update(post_params)
   redirect_to artist_path(@artist)
 end

 private

 def find_artist
   @artist = Artist.find(params[:id])
 end

 def post_params
   params.require(:artist).permit(:name, :bio)
 end
end
