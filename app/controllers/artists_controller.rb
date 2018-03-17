class ArtistsController < ApplicationController

  def index
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(post_params)
    if @artist.save
      redirect_to artist_path(@artist)
    end
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(post_params)
    redirect_to artist_path(@artist)
  end

  private

    def post_params
      params.require(:artist).permit(:name, :bio)
    end
end
