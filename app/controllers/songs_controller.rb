class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

 def create
   @song = Song.new(post_params(:name))
   @song.save
   redirect_to song_path(@song)
 end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update(post_params(:name))
    @song.save
    redirect_to song_path(@song)
  end

  private

  def post_params(*args)
    params.require(:song).permit(*args)
  end

end
