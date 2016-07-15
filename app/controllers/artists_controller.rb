class ArtistsController < ApplicationController

  def index
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(post_params(:artist, :name, :bio))
    redirect_to(artist_path(@artist))
  end

  def edit
    find_artist
  end

  def update
    find_artist
    @artist = Artist.update(@artist.id, post_params(:artist, :name, :bio))
    redirect_to(artist_path(@artist))
  end

  def show
    find_artist
  end

  private

    def find_artist
      @artist = Artist.find(params[:id])
    end

end
