
class ArtistsController < ApplicationController
  before_action :find_artist , only: [:update, :show]
  
  def show 
  end
  
  def create
    @artist = Artist.new(artist_params(:name, :bio))
    @artist.save 
    redirect_to artist_path(@artist)
  end
  
  def update
    @artist.update(artist_params(:name, :bio))
    redirect_to artist_path(@artist)
  end 
  
  private
  
  def find_artist
    @artist = Artist.find(params[:id])
  end
  
  def artist_params(*args)
    params.require(:artist).permit(*args)
  end
end
