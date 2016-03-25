class ArtistsController < ApplicationController
  before_action :select_artist, only: [:show, :edit, :update]
  def index
    @artists = Artist.all
  end

  def show
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(params.require(:artist).permit(:name, :bio))
    redirect_to artist_path(@artist)
  end

  def edit
  end

  def update
    @artist.update(params.require(:artist).permit(:name,:bio))
    redirect_to artist_path(@artist)
  end

  private
  def select_artist
    @artist = Artist.find(params[:id])
  end
end
