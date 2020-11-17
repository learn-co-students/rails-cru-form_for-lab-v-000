class SongsController < ApplicationController
  def index
    @songs = Song.all
  end 

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params(:name))
    redirect_to song_path(@song)
  end

  def edit
    @song = Song.find(params[:id])
  end

  def show
    @song = Song.find(params[:id])
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
