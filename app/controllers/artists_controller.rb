class ArtistsController < ApplicationController
  def create
    @artist = Artist.new(post_params(:name, :bio))
    @artist.save
    redirect_to artist_path(@artist)
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(post_params(:bio))
    redirect_to artist_path(@artist)
  end

  def show
    @artist = Artist.find(params[:id])
  end


  private

  def post_params(*args)
    params.require(:artist).permit(*args)
  end
end
