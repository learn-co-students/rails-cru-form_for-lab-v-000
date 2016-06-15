class SongsController < ApplicationController

  def index
    @songs = Song.all
    render '/songs/index.html'
  end

  def new
    @song = Song.new
    render '/songs/new.html'
  end

  def show
    @song = Song.find(params[:id])
  end
  
  def create
    @song = Song.create(post_params)
    redirect_to song_path(@song)
  end

  def edit
    @song = Song.find(params[:id])
    render '/songs/edit.html'
  end

  def update
    @song = Song.find(params[:id])
    @song.update(post_params)
    redirect_to song_path(@song)
  end

  private
    def post_params
      params.require(:song).permit(:name)
    end  
  
end
