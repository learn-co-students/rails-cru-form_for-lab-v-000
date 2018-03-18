class ArtistsController < ApplicationController

  def index
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(a_params)
    @artist.save
    a_redirect
  end

  def edit
    s_artist
  end

  def update
    s_artist
    @artist.update(a_params)
    a_redirect
  end

  def show
    s_artist
  end

private
    def s_artist
      @artist = Artist.find(params[:id])
    end

    def a_params
      params.require(:artist).permit(:bio, :name)
    end

    def a_redirect
        redirect_to artist_path(@artist)
    end

end
