class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    song = Song.new(post_params(:name, :artist_id, :genre_id))
    song.save

    redirect_to song_path(song)
  end

  def show
    @song = find_by_id(Song)
  end

  def edit
    @song = find_by_id(Song)
  end

  def update

  end

  private

    def post_params(*args)
      params.require(:song).permit(*args)
    end
end
