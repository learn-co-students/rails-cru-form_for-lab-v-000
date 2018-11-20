class ArtistsController < ApplicationController

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new
    @artist.name = params[:artist][:name]
    @artist.bio = params[:artist][:bio]
    @artist.save
    redirect_to artist_path(@artist)
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update!(artist_params)
    #@artist.update(name: params[:name], bio: params[:bio])
    redirect_to artist_path(@artist)
  end


  private
 
  def artist_params
     params.require(:artist).permit(:name, :bio)
  end
end
