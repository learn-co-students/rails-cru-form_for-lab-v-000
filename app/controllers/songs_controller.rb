class SongsController < ApplicationController

    def show
      @song = Song.find(params[:id])
      @genre = Genre.find(@song.genre_id)
      @artist = Artist.find(@song.artist_id)
    end

    def new
      @song = Song.new
    end

    def create
      @song = Song.new(song_params)
      @song.save
      redirect_to song_path(@song)
    end

    def edit
      find_song_by_id
    end

    def update
      find_song_by_id
      @song.update(song_params)
      redirect_to song_path(@song)
    end

    def index
      @songs = Song.all
    end

  private

    def song_params
      params.require(:song).permit(:name, :artist_id, :genre_id)
    end

    def find_song_by_id
      @song = Song.find(params[:id])
    end

end
