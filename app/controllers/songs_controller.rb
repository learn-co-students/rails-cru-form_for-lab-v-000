class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    find_current_song
  end

  def new
    @song = Song.new
  end

  def create
    redirect_to Song.create(song_params)
  end

  def edit
    find_current_song
  end

  def update
    find_current_song
    @song.update(song_params)
    redirect_to @song
  end

  private

  def find_current_song
    if params[:id] && params[:id].to_i.is_a?(Integer)
      @song = Song.find(params[:id].to_i)
    else
      raise params.inspect
    end
  end

  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end
end
