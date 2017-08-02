class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def show
    get_song
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params)
    redirect_to @song
  end

  def edit
    get_song
  end

  def update
    get_song
    @song.update(song_params)
    redirect_to @song
  end

  private

    def get_song
      @song = Song.find(params[:id])
    end

    def song_params
      params.require(:song).permit(:name, :artist_id, :genre_id)
    end

end
