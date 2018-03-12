
class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def show
    @song = Song.find_by(params[:id])
    @genre = Genre.find_by(params[:genre_id])
    @artist = Artist.find_by(params[:artist_id])
  end

  def create
    @song = Song.new(song_params(:name))
    @song.save
    redirect_to song_path(@song)
  end

  def edit
    @song = Song.find_by(params[:id])
  end

  def update
    @song = Song.find_by(params[:id])
    @song.update(song_params(:name))
    redirect_to song_path(@song)
  end

  def song_params(*args)
    params.require(:song).permit(*args)
  end
end
