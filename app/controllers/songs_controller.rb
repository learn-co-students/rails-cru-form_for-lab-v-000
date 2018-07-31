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
        binding.pry

        @song = Song.new
        # (name: params[:song][:name], artist_id: params[:song][:artist_id], genre_id: [:song][:genre_id] )
        @song.name = params[:song][:name]
        @song.artist_id = params[:song][:artist_id]
        @song.genre_id = params[:song][:genre_id]
        @song.save
        redirect_to song_path(@song)
         # you dont have to put the id  
    end

end
