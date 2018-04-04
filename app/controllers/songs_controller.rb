class SongsController < ApplicationController
    def index
        @songs = Song.all
    end 
    
    def show
        @song = getInstance(Song)
    end 
    
    def new 
        @song = Song.new 
    end 
    
    def create 
        @created_song = Song.create!(params.require(:song).permit(:name, :artist_id,:genre_id))
        redirect_to song_path(@created_song)
    end 
    
    def edit
        @song = getInstance(Song)
    end 
    
    def update 
        @updated_song = Song.find(params[:id])
        @updated_song.update!(check_params(:song, :name, :genre_id, :artist_id))
        redirect_to song_path(@updated_song)
    end 
end
