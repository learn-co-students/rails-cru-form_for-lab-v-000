class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(post_params(:song, :name, :artist_id, :genre_id))
    redirect_to(song_path(@song))
  end

  def edit
    find_song
  end

  def update
    find_song
    @song = Song.update(@song.id, post_params(:song, :name, :artist_id, :genre_id))
    redirect_to(song_path(@song))
  end

  def show
    find_song
  end

  private

  def find_song
    @song = Song.find(params[:id])
  end

end