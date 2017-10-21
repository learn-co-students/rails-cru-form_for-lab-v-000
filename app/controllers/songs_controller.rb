class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def show
    current_song
  end

  def new
  end

  def edit
    current_song
  end

  def create
    song = Song.create(permitted)
    redirect_to song_path(song)
  end

  def update
    current_song
    @song.update(permitted)
    redirect_to song_path(@song)
  end

  private
    def current_song
      @song = Song.find(params[:id])
    end

    def permitted
      params.require(:song).permit(:name,:artist_id,:genre_id)
    end
end
