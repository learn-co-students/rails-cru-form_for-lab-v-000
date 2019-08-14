class ArtistsController < ApplicationController
  def create
    @artist = Artist.create(post_params)
    redirect_to artist_path(@artist)
  end

  def update
    @artist = Artist.update(post_params)
    redirect_to artist_path(@artist)
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  private

  def post_params
    params.require(:artist).permit(:name, :bio)
  end
end
