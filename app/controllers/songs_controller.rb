class SongsController < ApplicationController
  def new
    @song = Song.new
  end

  def create
    @song = Song.new(params.require(:song).permit(:name))
    @song.save
    redirect_to song_path(@song.id)
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit

  end

  def update

  end
end
