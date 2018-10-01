class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    find
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(param(:name, :artist_id, :genre_id))
    @song.save
    redirect_to song_path(@song)
  end

  def edit
    find
  end

  def update
    find
    @song.update(param(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end

  private

  def find
    @song = Song.find(params[:id])
  end

  def param(*arg)
    params.require(:song).permit(*arg)
  end
end
