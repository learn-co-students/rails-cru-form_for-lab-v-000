class ArtistsController < ApplicationController

  def new
    @artist = Artist.new
  end

  def edit
    artist
  end

  def create
    @artist = Artist.new(artist_params(:name, :bio))
	  @artist.save
	  redirect_to artist_path(@artist)
  end

  def update
    artist
    @artist.update(artist_params(:name, :bio))
	  redirect_to artist_path(@artist)
	end

  def show
    artist
  end

  private
  def artist_params(*args)
    params.require(:artist).permit(*args)
  end

  def artist
    @artist = Artist.find(params[:id])
  end

end
