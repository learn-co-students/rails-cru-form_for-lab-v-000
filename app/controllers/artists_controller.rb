class ArtistsController < ApplicationController
  def show
    @artist = Artist.find(params_id)
  end

  def new
    @artist = Artist.new
  end

  def create
    if @artist = Artist.create(artist_params)
      redirect_to artist_path(@artist)
    else
      redirect_to new_artist_path
    end
  end

  def edit
    @artist = Artist.find(params_id)
  end

  def update
    @artist = Artist.find(params_id)
    if @artist.update(artist_params)
      redirect_to artist_path(@artist)
    else
      redirect_to edit_artist_path(@artist)
    end
  end

  def index
    @artists = Artist.all
  end

  private

    def artist_params
      params.require(:artist).permit(:name, :bio)
    end

    def params_id
      params.require(:id)
    end
end