class SongsController < ApplicationController
    
    def index
        @songs = Song.all    
    end
    
    def show
        @song = set_song
    end
    
    def new
        @song = Song.new
    end
    
    def create
        @song = Song.new(song_params)
        artist = Artist.find(params[:song][:artist_id])
        @song.artist = artist
        genre = Genre.find(params[:song][:genre_id])
        @song.genre = genre
        @song.save
        redirect_to song_path(@song)
    end
    
    def edit
        @song = set_song
    end
    
    def update
        @song = set_song
        @song.update(song_params)
        redirect_to song_path(@song)
    end
    
    private 
    # Use callbacks to share common setup or constraints between actions.
    def set_song
      @song = Song.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def song_params
      params.require(:song).permit(:name)
    end
end
