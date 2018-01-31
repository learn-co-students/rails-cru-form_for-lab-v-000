class SongsController < ApplicationController
  def index
  end
  
  def show
    @song = Song.find(params[:id])
    @genre = @song.genre
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(params.require(:song).permit(:name, :artist_id, :genre_id))
    @song.save
    redirect_to song_path(@song)
  end

  def edit
    @song = Song.new
  end
end
