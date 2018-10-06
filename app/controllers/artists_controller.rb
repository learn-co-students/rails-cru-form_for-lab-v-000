class ArtistsController < ApplicationController
  before_action :set_params, only: [:show, :edit, :update]
  def new
    @artist = Artist.new
  end
  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      redirect_to artist_path(@artist)
    else
      render 'new'
    end
  end

  def index
    @artists = Artist.all
  end

  def edit

  end
  def update
    if @artist.update(artist_params)
      redirect_to artist_path(@artist)
    else
      render 'edit'
    end
  end
  def show

  end

  private
  def artist_params
    params.require(:artist).permit(:name, :bio)
  end
  def set_params
    @artist = Artist.find(params[:id])
  end
end
