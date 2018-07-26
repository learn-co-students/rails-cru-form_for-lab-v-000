class SongsController < ApplicationController
  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
	  @song.save
	  redirect_to song_path(@song)
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
     @song = Song.find(params[:id])
    @artist.update(song_params)
    redirect_to song_path(@song)
  end


  def show
    @song = Song.find(params[:id])
  end

  private

  def song_params(*args)
    params.require(:song).permit(*args)
  end
end
