class SongsController < ApplicationController

  def new
    @song = Song.new
  end

  def show
    @song = Song.find_by(id: params[:id])
  end

  def create
    @song = Song.new(params.require(:song).permit!)
    @song.save
    redirect_to song_path(@song)
  end

  def edit
    @song = Song.find_by(id: params[:id])
  end

  def update
    @song = Song.find_by(id: params[:id])
    @song.update(params.require(:song).permit!)
    redirect_to song_path(@song)
  end

  def index
    @songs = Song.all
  end

end
