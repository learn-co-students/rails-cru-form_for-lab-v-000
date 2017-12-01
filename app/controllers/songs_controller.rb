class SongsController < ApplicationController

    before_action :find_song, only: [:show, :edit, :update]

    def index
        @songs = Song.all
    end

    def show
        @genre = @song.genre
        @artist = @song.artist
    end

    def new
        @song = Song.new
    end
    
    def create
        @song = Song.new(song_params(:name, :artist_id, :genre_id))
        @song.save
        redirect_to @song
    end

    def edit
    end

    def update
        @song.update(song_params(:name, :artist_id, :genre_id))
        redirect_to @song
    end

    private

    def song_params(*args)
        params.require(:song).permit(*args)
    end

    def find_song
        @song = Song.find_by(id: params[:id])
    end

end
