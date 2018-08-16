
class ArtistsController < ApplicationController
  before_action :find_artist , only: [:update, :show]
  
  def create
  end
  
  def update
  end 
  
  def show 
  end 
  
  private
  
  def find_artist
    @artist = Artist.find(params[:id])
  end
  
  def artist_params(*args)
    params.require(:artist).permit(*args)
  end
end
