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
    redirect_to artists_path
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def edit
  end

  def update
  end

  private

  def artist_params(*args)
    params.require(:artist).permit(*args)
  end

end
