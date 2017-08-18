class ArtistsController < ApplicationController

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
		@artist = Artist.new(post_params(:name, :bio))
	  @artist.save
	  redirect_to artist_path(@artist)
	end

  private

	def post_params(*args)
		params.require(:artist).permit(*args)
	end

end
