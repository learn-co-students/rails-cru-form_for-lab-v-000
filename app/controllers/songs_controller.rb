class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find_by(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(songs_params)
    @song.save
    redirect_to song_path(@song)
  end

  def edit
    @song = Song.find_by(params[:id])
  end

  def update
    @song = Song.find_by(params[:id])
    @song.update(songs_params)
    redirect_to song_path(@song)
  end

  private
    def songs_params
      params.require(:song).permit(:name, :artist_id, :genre_id)
    end
end
