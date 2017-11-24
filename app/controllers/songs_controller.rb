class SongsController < ApplicationController
  def new
    @song = Song.new
  end

  def create
    artist = Artist.find_or_create_by(name:params[:song][:artist_id])
    genre = Genre.find_or_create_by(name:params[:song][:genre_id])
    @song = Song.new(name:params[:song][:name],artist_id:artist.id,
    genre_id:genre.id)
    if @song.save
      redirect_to song_path(@song)
    else
      erb :"/songs/new"
    end
  end

  def update
    @song = Song.find_by(id:params[:id])
    @song.update(name:params[:song][:name], artist_id:params[:song][:artist_id],
      genre_id:params[:song][:genre_id])
    if @song.save
      redirect_to song_path(@song)
    else
      erb :'/songs/edit'
    end
  end

  def show
    @song = Song.find_by(id:params[:id])
  end

  def index
    @songs = Song.all
  end

  def edit
    @song = Song.find_by(id:params[:id])
  end
end
