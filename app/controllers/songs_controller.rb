class SongsController < ApplicationController
    before_action :get_song, only: [:show, :update, :edit, :delete]
    before_action :new_song, only: [:new]
    def index
        @songs = Song.all
    end

    def show 
    end

    def create
        s = Song.create(song_params(:name, :artist_id, :genre_id))
        redirect_to song_path(s)
    end

    def update
        @song.update(song_params(:name, :artist_id, :genere_id))
        redirect_to song_path(@song)
    end

    def edit

    end

    def new

    end


    private

    def song_params(*args)
        params.require(:song).permit(*args)
    end

    def get_song
        @song = Song.find(params[:id])
    end

    def new_song
        @song = Song.new
    end

end
