class ArtistsController < ApplicationController
  def new
    @artist = Artist.new
  end#new

  def create
    @artist = Artist.new(artist_params)
    @artist.save

    redirect_to artist_path(@artist)
  end#create

  def edit
    @artist = Artist.find(params[:id])
  end#edit

  def update
    @artist = Artist.find(params[:id])
    @artist.update(artist_params)

    redirect_to artist_path(@artist)
  end#update

  def destroy
  end#destroy

  def index
    @artists = Artist.all
  end#index

  def show
    @artist = Artist.find(params[:id])
  end#show

  private

  def artist_params
    params.require(:artist).permit(:name, :bio)
  end#params
end#class
