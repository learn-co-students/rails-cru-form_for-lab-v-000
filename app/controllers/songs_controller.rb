class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find_by(id: params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    #new_song_parameters = new_song_parameters 
    # { "song" => { "name" => "Franklin's Song", "genre_id" => 1, "artist_id" => 1}}
    # @song.name = params[:song][:name]
    # @song.genre = Genre.find(params[:song][:genre_id])
    # @song.artist = Artist.find(params[:song][:artist_id])
    @song.save

    redirect_to song_path(@song.id)
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    name = params[:song][:name]
    genre = Genre.find(params[:song][:genre_id])
    artist = Artist.find(params[:song][:artist_id])

    @song.update(name: name, genre: genre, artist: artist)
    redirect_to song_path(@song.id)
  end

  private
    def song_params
      params.require(:song).permit(:name, :genre_id, :artist_id)
    end
end
