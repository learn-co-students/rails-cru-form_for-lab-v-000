class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params(:name, :bio))
    @artist.save
    redirect_to artist_path(@artist)
  end

  def show
    @artist = found_params
  end

  def edit
    @artist = found_params
  end

  def update
    @artist = found_params
    @artist.update(artist_params(:name, :bio))
  end

  private

  def artist_params(*args)
    params.require(:artist).permit(*args)
  end

  def found_params
    Artist.find(params[:id])
  end
end
