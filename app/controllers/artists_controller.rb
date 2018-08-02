class ArtistsController < ApplicationController

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new
    @artist.name = params[:name]
    @artist.bio = params[:bio]
    @artist.save
    redirect_to artist_path(@artist)
  end

  def edit
  @artist = Artist.find(params[:id])
  end

  def update
  @artist = Artist.find(params[:id])
  @artist.update(artists_params(:name, :bio))
  redirect_to artist_path(@artist)
  end

  private

  def artists_params(*args)
  params.require(:artist).permit(*args)
  end

end
