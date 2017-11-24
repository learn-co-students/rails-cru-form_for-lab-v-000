class ArtistsController < ApplicationController

  def new
    @artist = Artist.new
  end

  def create
    artist = Artist.create(artist_params)
    redirect_to artist_path(artist)
  end

  def show
    grab_artist
  end

  def edit
    grab_artist
  end

  def update
    grab_artist.update(artist_params)
    redirect_to artist_path(@artist)
  end

  private

    def grab_artist
      @artist = Artist.find(params[:id])
    end

    def artist_params
      params.require(:artist).permit(:name, :bio)
    end

end
