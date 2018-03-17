class ArtistsController < ApplicationController

  def show
    @artist = current_artist
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(params_path)
    redirect_to artist_path(@artist)
  end

  def edit
    @artist = current_artist
  end

  def update
    @artist = current_artist
    @artist.update(params_path)
    redirect_to artist_path(@artist)
  end

  private

    def current_artist
      Artist.find(params[:id])
    end

    def params_path
      params.require(:artist).permit(:name, :bio)
    end
end
