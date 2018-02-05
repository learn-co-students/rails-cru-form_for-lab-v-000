class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    current_artist
  end

  def new
  end

  def edit
    current_artist
  end

  def create
    artist = Artist.create(permitted)
    redirect_to artist_path(artist)
  end

  def update
    current_artist
    @artist.update(permitted)
    redirect_to artist_path(@artist)
  end

  private
    def current_artist
      @artist = Artist.find(params[:id])
    end

    def permitted
      params.require(:artist).permit(:name,:bio)
    end
end
