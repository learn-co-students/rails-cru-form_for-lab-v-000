class SongsController < ActionController::Base

  def create
    @song = Song.create(song_params)
    redirect_to song_path(@song)
  end

  def edit
    @song = Song.find(params[:id])
  end

  def index

  end

  def new

  end

  def show
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update(song_params)
    redirect_to song_path(@song)
  end

private

  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end

end
