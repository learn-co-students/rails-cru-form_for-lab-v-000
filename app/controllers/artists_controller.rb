class ArtistsController < ApplicationController
  def create
  	@artist = Artist.create(params.require(:artist).permit(:name, :bio))
  	redirect_to artist_path(@artist)
  end

  def new
  	@artist = Artist.new
  end

  def edit
  	@artist = Artist.find(params[:id])
  end

  def update
  	@artist = Artist.find(params[:id])
  	@artist = Artist.update(params.require(:artist).permit(:name, :bio))
  	redirect_to artist_path(@artist)
  end

  def show
  	@artist = Artist.find(params[:id])
  end
end
