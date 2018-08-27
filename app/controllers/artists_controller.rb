class ArtistsController < ApplicationController
<<<<<<< HEAD
  def new
    @artist = Artist.new
  end
  
  def create
    @artist = Artist.new(artist_params)
    @artist.save
    
    redirect_to artist_path(@artist)
  end
  
  def show
    @artist = Artist.find(params[:id])
  end
  
  def edit
    @artist = Artist.find(params[:id])
  end
  
  def update
     @artist = Artist.find(params[:id])
     @artist.update(artist_params)
     @artist.save
     
     redirect_to artist_path(@artist)
  end
  
  
  private
  def artist_params
    params.require(:artist).permit(:name, :bio)
=======

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(params.require(:artist).permit(:name, :bio))

    redirect_to artist_path(@artist)
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def edit
		@artist = Artist.find(params[:id])
	end

	def update
	  @artist = Artist.find(params[:id])
	  @artist.update(params.require(:artist).permit(:name, :bio))
	  redirect_to artist_path(@artist)
>>>>>>> e302cf340e3215d1e2347951f277cf5154a2dcd7
  end
end
