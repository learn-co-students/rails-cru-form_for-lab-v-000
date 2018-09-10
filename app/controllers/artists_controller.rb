class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def show
    @artist = find_artist
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    @artist.save
    redirect_to artist_path(@artist)
  end

  def edit
    @artist = find_artist
  end

  def update
    @artist = find_artist
    @artist.update(artist_params)
    redirect_to artist_path(@artist)
  end

  private

    def find_artist
      Artist.find(params[:id])
    end

    def artist_params
      params.require(:artist).permit(:name, :bio)
    end

end
