class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
    render :form
  end

  def create
    @artist = Artist.new(params.require(:artist).permit(:name, :bio))
    @artist.save
    redirect_to artist_path(@artist)
  end

  def edit
    @artist = Artist.all.find_by(id: params[:id])
    render :form
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(params.require(:artist).permit(:name, :bio))
    redirect_to artist_path(@artist)
  end

  def show
    @artist = Artist.find(params[:id])
  end
end
