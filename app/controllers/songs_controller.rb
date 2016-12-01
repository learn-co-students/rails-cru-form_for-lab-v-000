class SongsController < ApplicationController
  before_action :find_song, only: [:show, :edit, :update]

  def index
    @songs = Song.all
  end

  def show
    #find_song
    @artist = Artist.find(@song.artist_id)
    @genre = Genre.find(@song.genre_id)
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(strong_params)
    @song.save
    redirect_to song_path(@song)
  end

  def edit
    #find_song
  end

  def update
    #find_song
    @song.update(strong_params)
    redirect_to song_path(@song)
  end

  private
    def find_song
      @song = Song.find(params[:id])
    end

    def strong_params
      params.require(:song).permit(:name, :artist_id, :genre_id)
    end
end
