class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update]

  #def show
  #end

  #def edit
  #end

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(require_params(:name))
    redirect_to_show
  end

  def update
    @song.update(require_params(:name))
    redirect_to_show
  end

  private

  def set_song
    @song = Song.find(params[:id])
  end

  def require_params(*args)
    params.require(:song).permit(*args)
  end

  def redirect_to_show
    redirect_to song_path(@song)
  end
end
