class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
    @genre = @song.genre
    @artist = @song.artist
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new
    @song.name = params[:name]
    @song.save
    redirect_to song_path(@song)
  end

  def edit
  @song = Song.find(params[:id])
  end

  def update
  @song = Song.find(params[:id])
  @song.update(songs_params(:name))
  redirect_to song_path(@song)
  end


private

def songs_params(*args)
params.require(:song).permit(*args)
end
end
