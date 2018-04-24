class SongsController < ApplicationController
  before_action :find_song, only: [:show, :edit, :update]
  before_action :find_song_genre, only: :show
  before_action :find_song_artist, only: :show

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(list_params(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end

  def index
    @songs = Song.all
  end

  def show
  end

  def edit
  end

  def update
    @song.update(list_params(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end

  def destroy
  end

  private 
    def list_params(*args)
      params.require(:song).permit(*args)
    end

    def find_song
      @song = Song.find(params[:id])
    end

    def find_song_genre
      @genre = Genre.find(@song.genre_id)
    end

    def find_song_artist
      @artist = Artist.find(@song.artist_id)
    end

end
