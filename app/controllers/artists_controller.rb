class ArtistsController < ApplicationController
  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(permit_params(:artist, :name, :bio))
  	@artist.save
  	redirect_to artist_path(@artist)
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.create(permit_params(:artist, :name, :bio))
    redirect_to artist_path(@artist)
  end
end
