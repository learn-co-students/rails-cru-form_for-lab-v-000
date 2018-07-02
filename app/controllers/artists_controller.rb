class ArtistsController < ApplicationController
  def new
  end

  def create
    @artist = Artist.create(post_params)
    redirect_to artist_path(@artist)
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.create(post_params)
    redirect_to artist_path(@artist)
  end

  private

  def post_params
    params.require(:artist).permit(:name, :bio)
  end
end
