class ArtistsController < ApplicationController

  def show
    get_artist
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(get_params)
    redirect_to artist_path(@artist)
  end

  def edit
    get_artist
  end

  def update
    get_artist
    @artist.update(get_params)
    redirect_to artist_path(@artist)
  end

  private

    def get_params
      params.require(:artist).permit(:name, :bio)
    end

    def get_artist
      @artist = Artist.find(params[:id])
    end
end
