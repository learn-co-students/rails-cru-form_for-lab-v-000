class SongsController < ApplicationController

    def index
      @songs = Song.all
    end

    def show
      @song = Song.find(params[:id])
      @artist = Artist.find(@song.artist_id)
      @genre = Genre.find(@song.genre_id)
    end

    def new
      @song = Song.new
    end

    def create
      @song = Song.create(list_params)
      redirect_to song_url(@song)
    end

    def edit
      @song = Song.find(params[:id])
    end

    def update
      @song = Song.find(params[:id])
      @song.update(list_params)
      redirect_to songs_url
    end

    private
    def list_params
      params.require(:song).permit(:name, :artist_id, :genre_id)
    end
end
