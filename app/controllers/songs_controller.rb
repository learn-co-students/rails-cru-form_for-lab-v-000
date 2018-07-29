class SongsController < ApplicationController

    def index
    end

    def show
        @song = Song.find(params[:id])   
    end

    def edit
         @song = Song.find(params[:id])       
    end

    def new
      @song = Song.new
    end

    def create
        @song = Song.new
        @song.artist = params[:song][:artist]
        @song.genre = params[:song][:genre]
        @song.save
        redirect_to song_path(@song.id)
         # you dont have to put the id  
    end

end
