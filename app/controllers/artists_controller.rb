class ArtistsController < ApplicationController
  def index
    @artist = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create
    artist = Artist.new(post_params(:name, :bio))
    artist.save

    redirect_to artist_path(artist)
  end

  def show
    @artist = find_by_id(Artist)
  end

  def edit
    @artist = find_by_id(Artist)
  end

  def update
    artist = find_by_id(Artist)
    artist.update(post_params(:name, :bio))

    redirect_to artist_path(artist)
  end

  private

    def post_params(*args)
      params.require(:artist).permit(*args)
    end
end
