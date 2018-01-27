class ArtistsController < ApplicationController

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(strong_params)
    redirect_to artist_path(@artist)
  end

  def show
    @artist = find_id
  end

  def edit
    @artist = find_id
  end

  def update
    @artist = find_id
    @artist.update(strong_params)
    redirect_to artist_path(@artist)
  end

  private
    def strong_params
      params.require(:artist).permit(:name,:bio)
    end

    def find_id
      Artist.find(params[:id])
    end
end
