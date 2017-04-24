class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
    render :form
  end

  def create
    @song = Song.new(params.require(:song).permit(:name))
    @song.save
    redirect_to song_path(@song)
  end

  def edit
    @song = Song.all.find_by(id: params[:id])
    render :form
  end

  def update
    @song = Song.find(params[:id])
    @song.update(params.require(:song).permit(:name))
    redirect_to song_path(@song)
  end

  def show
    @song = Song.find(params[:id])
  end
end
