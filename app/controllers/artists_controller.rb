class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end
  
  def show
    @artist = Artist.find_by(params[:id])
  end
  

end
