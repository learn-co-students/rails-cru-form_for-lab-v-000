class SongsController < ApplicationController 

    def index
        @allsongs = Song.all
    end

    def show 
        @song = Song.find(params[:id])

        @genre = Genre.find(@song.genre_id)   

        @artist = Artist.find(@song.artist_id)

    end
end