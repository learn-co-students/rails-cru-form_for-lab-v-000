class SongsController < ApplicationController

  def new
    @song = Song.find(params[:id])
  end

  def create
    @song = song.create(song_params)
    redirect_to song_path(@song)
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update(song_params)
    redirect_to song_path(@song)
  end

  private

  def song_params(*args)
    params.require(:song)
  end

end
