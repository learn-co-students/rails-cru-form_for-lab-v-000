class ArtistsController < ApplicationController
  def show
    find
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(param(:name, :bio))
    @artist.save
    redirect_to artist_path(@artist)
  end

  def edit
    find
  end

  def update
    find
    @artist.update(param(:name, :bio))
    redirect_to artist_path(@artist)
  end

  private

  def find
    @artist = Artist.find(params[:id])
  end

  def param(*arg)
    params.require(:artist).permit(*arg)
  end
end
