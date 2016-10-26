class ArtistsController < ApplicationController
  def show
    @artist = find_current
  end

  def new
  end

  def create
    artist = Artist.create(artist_params(:name, :bio))
    redirect_to artist_path(artist)
  end

  def edit
    @artist = find_current
  end

  def update
    artist = find_current
    artist.update(artist_params(:name, :bio))
    redirect_to artist_path(artist)
  end

  private

  def artist_params(*args)
    params.require(:artist).permit(*args)
  end

end
