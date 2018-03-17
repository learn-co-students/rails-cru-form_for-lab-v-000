class SongsController < ApplicationController
    def index
        @songs = Song.all
    end

    def show
        @song = Song.find(params[:id])
    end

    def new
        @song = Song.new
    end

    def edit
      @song = Song.find(params[:id])
    end

    def create
      @song = Song.new(songs_params(:name, :artist_id, :genre_id))
      @song.save
      redirect_to song_path(@song)
    end

    def update
      @song = Song.find(params[:id])
      @song.update(songs_params(:name, :artist_id, :genre_id))
      redirect_to song_path(@song)
    end

    private

    def songs_params(*args)
      params.require(:song).permit(*args)
    end
end
