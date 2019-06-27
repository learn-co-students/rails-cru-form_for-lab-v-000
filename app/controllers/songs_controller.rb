class SongsController < ApplicationController
    #made using rails g model Song name:string artist_id:integer genre_id:integer --no-test-framework
    def show
        @song = Song.find(params[:id]) 
        @genre = @song.genre
        @artist = @song.artist
    end

    def new
        @song = Song.new
    end

    def create
        @song = Song.new(song_params(:name))
        @song.genre = Genre.find_by(params[:genre_id])
        @song.artist = Artist.find_by(params[:artist_id])
        @genre = @song.genre
        @artist = @song.artist
        @song.save
        redirect_to song_path(@song)
    end
    
    def update
        @song = Song.find(params[:id])
        @song.genre = Genre.find_by(params[:genre_id])
        @song.artist = Artist.find_by(params[:artist_id])
        @genre = @song.genre
        @artist = @song.artist
        @song.update(song_params(:name))
        redirect_to song_path(@song)
    end

    def edit
        @song = Song.find(params[:id])
        @genre = @song.genre
        @genre.update
        @artist = @song.artist
        @genre.update
    end
    
    private #private method

    def song_params(*args) #strong params
        params.require(:song).permit(*args)
    end
end
