class ArtistsController < ApplicationController
  before_action :get_artist, only: [:show, :edit, :update]

  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def show
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      redirect_to artist_url(@artist)
    else
      render "new"
    end
  end

  def edit
    render "new"
  end

  def update
    if @artist.update(artist_params)
      redirect_to artist_url(@artist)
    else
      render "new"
    end
  end

  private
  def artist_params
    params.require(:artist).permit(:name, :bio)
  end

  def get_artist
    @artist = Artist.find(params[:id])
  end
end
