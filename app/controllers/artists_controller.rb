class ArtistsController < ApplicationController

  def new
    @artist = Artist.new
  end

  def show
    @artist = artist_finder
  end

  def create
    @artist = Artist.new(artist_params(:name, :bio))
    @artist.save
    redirect_to artist_path(@artist)
  end

  def edit
    @artist = artist_finder
  end

  def update
    @artist = artist_finder
    @artist.update(artist_params(:name, :bio))
    redirect_to artist_path(@artist)
  end

  private

  def artist_finder
    Artist.find(params[:id])
  end

  def artist_params(*args)
    params.require(:artist).permit(*args)
  end

end
