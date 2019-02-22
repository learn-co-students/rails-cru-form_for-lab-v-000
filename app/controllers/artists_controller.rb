class ArtistsController < ApplicationController


  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(post_params)
    @artist.save
    redirect_to artist_path(@artist)
  end

  def edit
    find_artist
  end

  def update
    find_artist
    @artist.update(post_params)
    redirect_to artist_path(@artist)
  end

  private

  def find_artist
    @artist = Artist.find(params[:id])
  end

  def post_params(*args)
    params.require(:artist).permit(:name, :bio)
  end
end
