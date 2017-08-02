class ArtistsController < ApplicationController

  def show
    get_artist
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(artist_params)
    redirect_to @artist
  end

  def edit
    get_artist
  end

  def update
    get_artist
    @artist.update(artist_params)
    redirect_to @artist
  end

  private

    def get_artist
      @artist = Artist.find(params[:id])
    end

    def artist_params
      params.require(:artist).permit(:name, :bio)
    end

end
