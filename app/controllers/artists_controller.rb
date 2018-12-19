class ArtistsController < ApplicationController

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params(:name, :bio))
    @artist.save
    redirect_to artist_path(@artist)
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
	  @artist = Artist.find(params[:id])
	  @artist.update(artist_params(:name, :bio))
	  redirect_to artist_path(@artist)
	end

  private
  # We pass the permitted fields in as *args;
  # this keeps `post_params` pretty dry while
  # still allowing slightly different behavior
  # depending on the controller action
  def artist_params(*args)
    params.require(:artist).permit(*args)
  end

end
