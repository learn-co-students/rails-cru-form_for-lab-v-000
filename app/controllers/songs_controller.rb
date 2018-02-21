class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def show
    @song = song_finder
    @artist = @song.artist
    @genre = @song.genre
  end

  def create
    @song = Song.new(song_params(:name, :artist_id, :genre_id))
    @song.save
    redirect_to song_path(@song)
  end

  def edit
    @song = song_finder
  end

  def update
    @song = song_finder
    @song.update(song_params(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end

  private

  def song_finder
    Song.find(params[:id])
  end

  def song_params(*args)
    params.require(:song).permit(*args)
  end

end
