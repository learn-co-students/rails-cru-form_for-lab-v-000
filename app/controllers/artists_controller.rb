class ArtistsController < ApplicationController
  
  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end
  
  def create
    @artist = Artist.new(artist_params)
    redirect_to artist_path(@artist) if !!@artist.save
  end
  
  def show
    @artist = Artist.find_by(:id => params["id"])
  end
  
  def edit
    @artist = Artist.find_by(:id => params["id"])
  end
  
  def update
    @artist = Artist.update(params["id"], artist_params)
    redirect_to artist_path(@artist)
  end
  
  private
  
  def artist_params
    params.require(:artist).permit(:name, :bio)
  end
end
