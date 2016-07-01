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
    print artist_params
    @artist = Artist.create(artist_params)
    redirect_to artist_path(@artist)
  end
  
  def edit
    @artist = Artist.find(params[:id])
  end
  
  def update
    print artist_params
    @artist = Artist.find(params[:id])
    @artist.update(name: artist_params[:name], bio: artist_params[:bio])
    redirect_to artist_path(@artist)
  end
  
  private
  
  def artist_params
    params.require(:artist).permit(:name, :bio)
  end
end
