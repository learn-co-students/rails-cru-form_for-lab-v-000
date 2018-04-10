class ArtistsController < ApplicationController
  before_action :find_artist, except: [:create, :new]

  def new
    @artist = Artist.new
  end

  def create  
    @artist = Artist.new(artist_params)
    @artist.save 
    redirect_to artist_path(@artist)
  end

  def show

  end

  def edit
    
  end

  def update
    @artist.update(artist_params)
    redirect_to artist_path(@artist)
  end

  private 

  def find_artist
    @artist = Artist.find(params[:id])    
  end

  def artist_params 
    params.require(:artist).permit(:name, :bio)
  end
end
