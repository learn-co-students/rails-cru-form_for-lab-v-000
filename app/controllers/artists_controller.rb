class ArtistsController < ApplicationController
  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end
  def create
    @artist = Artist.create(form_params)
    redirect_to artist_path(@artist)
  end

  def edit
    @artist = Artist.find(params[:id])
  end
  def update
    @artist = Artist.find(params[:id])
    @artist.update(form_params)
    redirect_to artist_path(@artist)
  end

  private
    def form_params
      params.require(:artist).permit(:name, :bio)
    end
end
