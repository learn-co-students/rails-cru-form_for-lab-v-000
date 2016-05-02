class ArtistsController < ApplicationController
  
  def index
  end
  
  def show
    @artist = Artist.find(params[:id])
  end
  
  def new
    @artist = Artist.new
  end
  
  def create
    @artist = Artist.create(params.require(:artist).permit(:name, :bio))
    redirect_to artist_path(@artist)
  end
  
  def edit
    @artist = Artist.find(params[:id])
  end
  
  def update
    parameters = params.require(:artist).permit(:name, :bio)
    @artist = Artist.find(params[:id])
    @artist.update(parameters)
    redirect_to artist_path(@artist)
  end
  
end