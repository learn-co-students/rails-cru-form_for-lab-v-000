class ArtistsController < ApplicationController

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    #binding.pry
    #@artist = Artist.new
    #@artist.name = params[:artist][:name]
    #@artist.bio = params[:artist][:bio]
    @artist = Artist.new(artist_params(:name, :bio))
    @artist.save
    redirect_to artist_path(@artist)
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    #binding.pry
    @artist = Artist.find(params[:id])
    #@artist.update(name: params[:artist][:name], bio: params[:artist][:bio])
    @artist.update(artist_params(:name, :bio))
    redirect_to artist_path(@artist)
  end

  private

  def artist_params(*args)
    params.require(:artist).permit(*args)
  end

end
