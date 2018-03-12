class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    @artist.save
    redirect_to artist_path(@artist)
  end

  def show
    @artist = Artist.find_by_id(params[:id])
  end

  def edit
    @artist = Artist.find_by_id(params[:id])
  end

  def update
    @artist = Artist.find_by_id(params[:id])
    @artist.update(artist_params)
    redirect_to artist_path(@artist)
  end

  private

    def artist_params
      params.require(:artist).permit(:name, :bio)
    end

end
