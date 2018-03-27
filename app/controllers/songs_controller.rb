class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def show
    set_song
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params(:name))
    redirect_to song_path(@song)
  end

  def edit
    set_song
  end

  def update
    set_song
    if !params[:song][:name].empty?
      @song.update(song_params(:name))
    end
    if !params[:song][:artist_id].empty?
      @song.update(song_params(:artist_id))
    end
    if !params[:song][:genre_id].empty?
      @song.update(song_params(:genre_id))
    end
    redirect_to song_path(@song)
  end

  private

  def set_song
    @song = Song.find(params[:id])
  end

  def song_params(*args)
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end

end
