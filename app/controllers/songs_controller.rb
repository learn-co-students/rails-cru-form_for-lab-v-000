class SongsController < ApplicationController


  def index
    @songs = Song.all
  end

  def show
  	find_song
  end

  def create
    @song = Song.new(song_params)
    @song.save
    redirect_to song_path(@song)
  end

  def update
    @song = find_song
    @song.update(song_params)
    redirect_to song_path(@song)
  end

  def edit
    @song = find_song
  end

  def new
    @song = Song.new
  end

  private

  def find_song
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end

end
