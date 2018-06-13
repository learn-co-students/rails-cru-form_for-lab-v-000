class ArtistsController < ApplicationController
  def new 
    @artist = Artist.new 
    render 'form'
  end 
  
  def create
    @artist = Artist.create(artist_params)
    redirect_to artist_path(@artist)
  end 
  
  def edit 
    @artist = set_artist
    render 'form'
  end 
  
  def update
    @artist = set_artist
    @artist.update(artist_params)
    redirect_to artist_path(@artist)
  end 
  
  def show 
    @artist = set_artist
  end 
  
  private 
  
  def artist_params
    params.require(:artist).permit(:name, :bio)
  end 
  
  def set_artist 
    Artist.find(params[:id])
  end 
end
