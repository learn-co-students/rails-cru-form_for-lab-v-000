class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def show
    set_song
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    @song.save
    # if Artist.find_by(:name => song_params[:artist])
    #   @artist = Artist.find_by(:name => song_params[:artist])
    # else
    #   @artist = Artist.new(:name => song_params[:artist])
    # end
    # @artist.save
    #
    # if Genre.find_by(:name => song_params[:genre])
    #   @genre = Genre.find_by(:name => song_params[:genre])
    # else
    #   @genre = Genre.new(:name => song_params[:genre])
    # end
    # @genre.save
    #
    # @song = Song.create(:name => song_params[:name], :artist_id => @artist.id, :genre_id => @genre.id)

    redirect_to song_path(@song)
  end

  def edit
    set_song
  end

  def update
    set_song
    @song.update(song_params)

    redirect_to song_path(@song)
  end

  private

  def set_song
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end

end
