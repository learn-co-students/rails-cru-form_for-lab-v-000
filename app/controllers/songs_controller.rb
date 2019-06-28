class SongsController < ApplicationController
    #made using rails g model Song name:string artist_id:integer genre_id:integer --no-test-framework
    def index
        @songs = Song.all
    end
    
    def show
        @song = Song.find(params[:id]) 
        @genre = @song.genre
        @artist = @song.artist
    end

    def new
        @song = Song.new
    end

    def create
        @song = Song.new(song_params(:name,:artist_id,:genre_id))
        @song.save
        redirect_to song_path(@song)
    end
    
    def edit
        @song = Song.find(params[:id])
    end

    def update
        @song = Song.find(params[:id])
        @song.update(song_params(:name,:artist_id,:genre_id))
        redirect_to song_path(@song)
    end


    
    private #private method

    def song_params(*args) #strong params
        params.require(:song).permit(*args)
    end
end
