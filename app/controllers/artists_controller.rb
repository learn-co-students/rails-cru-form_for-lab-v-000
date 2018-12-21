class ArtistsController < ApplicationController
  
  def index
    @artists = Artist.all
  end
    
  def new
  end 
  
  def show 
    @artist = Artist.find(params[:id])
  end 
  
  def create
    @artist = Artist.create(name: params[:artist][:name], bio: params[:artist][:bio])
    redirect_to artist_path(@artist)
  end 
  
  def edit 
    @artist = Artist.find(params[:id])
  end 
  
  def update
    @artist = Artist.find(params[:id])
    @artist.update(name: params[:artist][:name], bio: params[:artist][:bio])
    redirect_to artist_path(@artist)
  end 
end
