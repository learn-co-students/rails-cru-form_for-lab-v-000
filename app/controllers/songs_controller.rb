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
    if Artist.find_by(:name => song_params[:artist])
      @artist = Artist.find_by(:name => song_params[:artist])
    else
      @artist = Artist.new(:name => song_params[:artist])
    end
    @artist.save

    if Genre.find_by(:name => song_params[:genre])
      @genre = Genre.find_by(:name => song_params[:genre])
    else
      @genre = Genre.new(:name => song_params[:genre])
    end
    @genre.save

    @song = Song.create(:name => song_params[:name], :artist_id => @artist.id, :genre_id => @genre.id)

    redirect_to song_path(@song)
  end

  def edit
    set_song
  end

  def update
    @artist = Artist.find_by(:name => song_params[:artist])
    @genre = Genre.find_by(:name => song_params[:genre])

    @song.update(:name => song_params(:name), :genre_id => @genre.id, :artist_id => @artist.id)

    redirect_to song_path(@song)
  end

  private

  def set_song
    @song = Song.find(params[:id])
  end

  def song_params(*args)
    params.require(:song).permit(:name, :artist, :genre)
  end

end
