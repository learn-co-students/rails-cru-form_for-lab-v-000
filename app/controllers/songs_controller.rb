class SongsController < ApplicationController
  def create
    @song = Song.new(name: params[:name], artist_id: params[:artist_id], genre_id: params[:genre_id])
    @song.save
    redirect_to song_path(@song)
  end

  def update
    @song = Song.find(params[:id])
    @song.update(params)
    redirect_to song_path(@song)
  end

  def show
    binding.pry
    @song = Song.find(params[:id])
  end

  def new
    @song.Song.new
  end

  def edit
    @song = Song.find(params[:id])
  end
end
