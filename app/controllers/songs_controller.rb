class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    @song.save
    redirect_to song_path(@song)
  end

  def edit
    get_song
  end

  def update
    @song.update(song_params)
    @song.save
    redirect_to song_path(@song)
  end

  def show
    get_song
    redirect_to song_path(@song)
  end

  def delete
    get_song
    @song.delete
    redirect_to song_path
  end




private

  def song_params(*args)
    params.require(:song).permit(:name)
  end

  def get_song
    @song = Song.find_by(params[:id])
  end


end
