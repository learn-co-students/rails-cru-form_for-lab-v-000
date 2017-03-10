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
    @song = Song.create!(post_params)
   #@song = Song.new
   #@song.name = params[:song][:name]
   #@song.artist = Artist.create!(name: params[:song][:artist])
   #@song.genre = Genre.create!(name: params[:song][:genre])
   #@song.save
   redirect_to song_path(@song)
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    #@song.name = params[:song][:name]
    #@song.artist = Artist.find_or_create_by(name: params[:song][:artist])
    #@song.genre = Genre.find_or_create_by(name: params[:song][:genre])
    @song.update(post_params)
    @song.save
    redirect_to song_path(@song)
  end

  private
    def post_params
      params.require(:song).permit(:name, :artist_id, :genre_id, :artist, :genre)
    end

end
