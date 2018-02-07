class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def create
    @song = Song.create(song_params)
    redirect_to song_path(@song)
  end

  def new
    @song = Song.new
  end

  def edit
    @song = Song.find(params[:id])
  end

  def show
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update(song_params)
    @song.save
    redirect_to song_path(@song)
  end

  private

  def song_params
    params.require(:song).permit(:name,:bio)
  end

end
