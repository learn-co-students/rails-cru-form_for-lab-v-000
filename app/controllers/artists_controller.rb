class ArtistsController < ApplicationController

  def show
    set_artist
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(artist_params(:name, :bio))
    redirect_to artist_path(@artist)
  end

  def edit
    set_artist
  end

  def update
    set_artist
    if !params[:artist][:name].empty?
      @artist.update(artist_params(:name))
    end
    if !params[:artist][:bio].empty?
      @artist.update(artist_params(:bio))
    end
    redirect_to artist_path(@artist)
  end

  private

  def set_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params(*args)
    params.require(:artist).permit(:name, :bio)
  end

end
