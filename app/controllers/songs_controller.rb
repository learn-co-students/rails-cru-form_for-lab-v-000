class SongsController < ApplicationController
    def index
        @songs = Song.all
    end

    def show
        @song = Song.find(params[:id])
    end

    def new

    end

    def create
        @song = Song.new
        @song[:name] = params[:song][:name]
        @song.save
        redirect_to song_path(@song)
    end
      
    def edit
        @song = Song.find(params[:id])
    end
end
