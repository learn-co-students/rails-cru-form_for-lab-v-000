class SongsController < ApplicationController

  def create
    @song = Song.new(song_params(:name))
    @song.genre_id = song_params(:genre_id).values[0].to_i
    @song.artist_id = song_params(:artist_id).values[0].to_i
    @song.save
    @genre = Genre.find(@song.genre_id)
    @artist = Artist.find(@song.artist_id)
    redirect_to song_path(@song)
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to songs_path
  end

  def edit
    @song = Song.find(params[:id])
  end

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def show
    @song = Song.find(params[:id])
    @genre = Genre.find(@song.genre_id)
    @artist = Artist.find(@song.artist_id)
  end

  def update
    @song = Song.find(params[:id])
    @song.update(song_params(:name))
    redirect_to song_path(@song) 
  end

  def song_params(*args)
    params.require(:song).permit(*args)
  end
end
