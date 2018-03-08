class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def show
    set_song
    if Artist.find_by(:id => @song.artist_id)
      @song.artist = Artist.find_by(:id => @song.artist_id)
    end
    if Genre.find_by(:id => @song.genre_id)
      @song.genre = Genre.find_by(:id => @song.genre_id)
    end
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(:name => song_params[:name])

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

    @song.artist_id  = @artist.id
    @song.genre_id = @genre.id
    @song.save

    redirect_to song_path(@song)
  end

  def edit
    set_song
  end

  def update
    set_song
    @song.update(song_params(:name, :bio))
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
