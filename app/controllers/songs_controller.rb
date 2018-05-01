class SongsController < ApplicationController 

    def index
        @allsongs = Song.all
    end

    def show 
        @song = Song.find(params[:id])
        @genre = Genre.find(@song.genre_id)   
        @artist = Artist.find(@song.artist_id)
    end

    def new 
    end

    def create 
        
        @song = Song.new
        @song.name = params["song"]["name"]
        @song.artist_id = params["song"]["artist_id"]
        @song.genre_id = params["song"]["genre_id"]
        @song.save

        redirect_to song_path(@song)
    end

    def edit 
        @song = Song.find(params[:id])
    end

    def update 
        @song = Song.find(params[:id])

        @song.name = params["song"]["name"]
        @song.artist_id = params["song"]["artist_id"]
        @song.genre_id = params["song"]["genre_id"]
        @song.save 

        redirect_to song_path(@song)
    end

end