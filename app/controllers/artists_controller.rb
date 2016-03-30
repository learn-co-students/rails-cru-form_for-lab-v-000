class ArtistsController < ApplicationController
  def new #get new.html.erb
    @artist = Artist.new
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def create #post
    @artist = Artist.new(strong_params)
    @artist.save
    redirect_to artist_path(@artist)
  end

  def edit #get edit.html.erb
    @artist = Artist.find(params[:id])
  end

  def update #patch
    @artist = Artist.find(params[:id])
    @artist.update(strong_params)
    redirect_to artist_path(@artist)
  end

  private

  def strong_params
    params.require(:artist).permit(:name, :bio)
  end

end
