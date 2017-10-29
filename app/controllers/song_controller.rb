class SongsController < ApplicationController

  def index
  end

  def show
    @song = Song.find(params[:id])
    @genre = Genre.find(@song.genre_id)
    @artist = Artist.find(@song.artist_id)
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

end
