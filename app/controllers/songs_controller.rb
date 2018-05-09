class SongsController < ApplicationController
    def index
        @songs = Song.all
    end
  
    def show
        @song = Song.find(params[:id])
    end
  
    def new
        @song = Song.new
    end
  
    def create
      @song = Song.new(name: params[:song][:name], artist_id: params[:song][:artist_id])
    #   @book = @author.books.create(published_at: Time.now)
      @song.save
      redirect_to song_path(@song)
    end
  
    def update
      @song = Song.find(params[:id])
      @song.update(name: params[:song][:name])
      redirect_to song_path(@song)
    end
  
    def edit
      @song = Song.find(params[:id])
    end
end
