class SongsController < ApplicationController

  def index

  end

  def show
    @song = Song.find(params[:id])
    @artist = Artist.find_by(id: @song.artist_id)
    @genre = Genre.find_by(id: @song.artist_id)
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(songs_params(:name, :artist_id, :genre_id))
    @song.save
    redirect_to song_path(@song)
  end

  def update
    @song = Song.find(params[:id])
    @song.update(songs_params(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end

  def edit
    @song = Song.find(params[:id])
  end

  private
  def songs_params(*args)
    params.require(:song).permit(*args)
  end

end
