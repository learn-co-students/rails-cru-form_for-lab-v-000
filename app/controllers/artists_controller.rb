class ArtistsController < ApplicationController
  def show
   @artist = Artist.find(params[:id])
  end
  
  def new
    @artist = Artist.new
  end
  def create
    @artist = Artist.create(params.require(:artist).permit(:name, :bio)
    @artist.save
     redirect_to 
  end
end
