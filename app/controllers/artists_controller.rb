class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :update, :edit]

  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params(:name, :bio))
    @artist.save

    redirect_to artist_path(@artist)
  end

  def edit
  end

  def update
    @artist.update(artist_params(:name, :bio))

    redirect_to artist_path(@artist)
  end

  def show
  end

  private
  def set_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params(*args)
    params.require(:artist).permit(*args)
  end
end
