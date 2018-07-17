class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song= Song.new
  end

  def create
    @song = Song.create(song_params(:name, :artist_id, :genre_id))
    if @song.save
      redirect_to song_path(@song)
    else
      redirect 'create'
    end
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update(song_params(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end


  private

  # We pass the permitted fields in as *args;
  # this keeps `post_params` pretty dry while
  # still allowing slightly different behavior
  # depending on the controller action
  def song_params(*args)
    params.require(:song).permit(*args)
  end
end
