class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(strong_params)
    redirect_to song_path(@song)
  end

  def show
    @song = find_id
  end

  def edit
    @song = find_id
  end

  def update
    @song = find_id
    @song.update(strong_params)
    redirect_to song_path(@song)
  end

  private
  def strong_params
    params.require(:song).permit(:name,:artist_id,:genre_id)
  end

  def find_id
    Song.find(params[:id])
  end
end
