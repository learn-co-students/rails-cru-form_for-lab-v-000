class ArtistsController < ApplicationController

  def index
    @artists = Artist.all.sort_by{|artist| artist.name}
  end

  def show
    set_artist
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create!(artist_params(:name, :bio))

    redirect_to artist_path(@artist)
  end

  def edit
    set_artist
  end

  def update
    set_artist
    @artist.update(artist_params(:name, :bio))

    redirect_to artist_path(@artist)
  end

  private

  def set_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params(*args)
    params.require(:artist).permit(*args)
  end
end
