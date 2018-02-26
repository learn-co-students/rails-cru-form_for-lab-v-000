class ArtistsController < ApplicationController
        
def show
    @artist =Artist.find(param[:id])
end

def create
    @artist = Artist.new(artist_params(:name))
    @artist.save
    redirect_to artist_path(@artist)
end

def update
   @artist = Artist.find(params[:id])
  @artist.update(artist_params(:artist))
  redirect_to artist_path(@artist)
end 
    
    
def artist_params(*args)
		params.require(:artist).permit(*args)
	end
	end

