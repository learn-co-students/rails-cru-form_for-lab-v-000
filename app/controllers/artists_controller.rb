class ArtistsController < ApplicationController
  def show
    find_current_artist
  end

  def new
    @artist = Artist.new
  end

  def create
    redirect_to Artist.create(artist_params)
  end

  def edit
    find_current_artist
  end

  def update
    find_current_artist
    @artist.update(artist_params)
    redirect_to @artist
  end

  private

  def find_current_artist
    if params[:id] && params[:id].to_i.is_a?(Integer)
      @artist = Artist.find(params[:id].to_i)
    else
      raise params.inspect
    end
  end

  def artist_params
    params.require(:artist).permit(:name, :bio)
  end
end
