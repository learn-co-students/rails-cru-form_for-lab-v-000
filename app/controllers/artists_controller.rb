class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(params.required(:artist).permit(:name, :bio))
    @artist.save
    redirect_to artist_path(@artist)
  end

  def show
    @artist = Artist.find_by(params[:id])
  end

  def update
    @artist = Artist.find_by(params[:id])
  end

  private

  def artist_params(*args)
    params.required(:artist).permit(*args)
  end
end
