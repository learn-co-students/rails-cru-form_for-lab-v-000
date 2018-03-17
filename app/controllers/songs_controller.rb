class SongsController < ApplicationController

  def index
    @songs = Song.all 
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(user_params);@song.save
    redirect_to song_path(@song)
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update(user_params);@song.save
    redirect_to song_path(@song)
  end

  def show
    @song = Song.find(params[:id])
  end

  private

  def user_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end

end
