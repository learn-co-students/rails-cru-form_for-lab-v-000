class SongsController < ApplicationController
<<<<<<< HEAD
  
  def index
    @songs = Song.all
  end
  
  def new
    @song = Song.new
  end
  
  def create
    @song = Song.new(song_params)
    @song.save
    
    redirect_to song_path(@song)
  end
  
  
  def show
    @song = Song.find(params[:id])
  end
  
  def edit
    @song = Song.find(params[:id])
  end
  
  def update
     @song = Song.find(params[:id])
     @song.update(song_params)
     @song.save
     
     redirect_to song_path(@song)
  end
  
  
  private
  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end
  
=======

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(params.require(:song).permit(:name, :artist_id, :genre_id))

    redirect_to song_path(@song)
  end

  def show
    @song = Song.find(params[:id])
    @genre = @song.genre
    @artist = @song.artist
  end

  def edit
		@song = Song.find(params[:id])
	end

	def update
	  @song = Song.find(params[:id])
    @song.update(params.require(:song).permit(:name, :artist_id, :genre_id))

	  redirect_to song_path(@song)
  end
>>>>>>> e302cf340e3215d1e2347951f277cf5154a2dcd7
end
