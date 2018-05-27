class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  #  @song.genre_id = Genre.find(params[:song][:genre_id])
  # @song.artist_id = Artist.find(params[:song][:artist_id])
    @song.genre = Genre.find(@song.genre_id)
    @song.artist = Artist.find(@song.artist_id)
  #
    @genre = @song.genre
    @artist = @song.artist
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    @song.save
    redirect_to @song
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update(song_params)
    redirect_to @song
  end

private

def song_params
  params.require(:song).permit(:name, :artist_id, :genre_id)
end
  # def song_gen_params
  #   params.require(:song).permit(:genre)
  # end
  #
  # def song_artist_params
  #   params.require(:song).permit(:artist)
  # end
  #
  # def song_name
  #   params.require(:song).permit(:name)
  # end



end
