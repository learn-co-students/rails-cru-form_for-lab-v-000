class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(artist_params)
    redirect_to artist_path(@artist)
  end

  def show
    @artist = find
  end

  def edit
    @artist = find
  end

  def update
    @artist = find
    @artist.update(artist_params)
    redirect_to artist_path(@artist)
  end

  private
    def find
      Artist.find(params[:id])
    end

    def artist_params
      params.require(:artist).permit(:name, :bio)
    end
end
