class ArtistsController < ApplicationController
  before_action :load_artist, only: [:show, :edit, :update]

  def index
    @artist = Artist.all
  end

  def show
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      redirect_to artist_path(@artist)
    else
      redirect_to new_artist_path
    end
  end

  def edit
  end

  def update
    if @artist.update(artist_params)
      redirect_to artist_path(@artist)
    else
      redirect_to edit_artist_path(@artist)
    end
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :bio)
  end

  def load_artist
    @artist = Artist.find(params[:id])
  end
end