class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end 
  
  def show 
    artist_find
  end 
  
  def new
    @artist = Artist.new
  end 
  
  def create 
    @artist = Artist.create!(artist_params)
    redirect_to @artist
  end
  
  def edit 
    artist_find
  end 
  
  def update
    artist_find
    @artist.update(artist_params)
    redirect_to @artist 
  end
  
  private 
  
  def artist_params
    params.require(:artist).permit(:name, :bio)
  end
  
  def artist_find
    @artist = Artist.find(params[:id])
  end 
end
