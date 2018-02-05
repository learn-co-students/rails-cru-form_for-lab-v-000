class ArtistsController < ApplicationController

  def index
  end

  def new
   @artist = Artist.new
 end

 def create
   @artist = Artist.new(params.require(:artist).permit(:name, :bio))
   @artist.save
   redirect_to artist_path(@artist)
 end

 def show
   @artist = Artist.find(params[:id])
 end

 def edit
   @artist = Artist.find(params[:id])
 end

 def update
   @artist = Artist.find(params[:id])
   @artist.update(params.require(:artist).permit(:name, :bio))
   redirect_to artist_path(@artist)
 end

 private

 def post_params(*args)
   params.require(:artist).permit(*args)
 end

end
