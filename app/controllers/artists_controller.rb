class ArtistsController < ApplicationController

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(post_params(:name, :bio))
    redirect_to artist_path(@artist)
  end

  def show
    @artist = Artist.find_by(params[:id])
  end

  def edit
    @artist = Artist.find_by(params[:id])
  end

  def update
    @artist = Artist.find_by(params[:id])
    @artist.update(post_params(:name, :bio))
    redirect_to artist_path(@artist)
  end

  private

    def post_params(*args)
      params.require(:artist).permit(*args)
    end

end
