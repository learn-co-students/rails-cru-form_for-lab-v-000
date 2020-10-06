class ArtistsController < ApplicationController
  # def self.controller_path 
  #   "artists"
  # end
  def show 
    @artist = Artist.find(params[:id])
  end

  def new 
    @artist = Artist.new
  end 

  def create 
    @artist = Artist.new(artist_params)
    if @artist.save 
      redirect_to artist_path(@artist)
    else 
      render :new
    end
  end

  def edit 
    @artist = Artist.find_by_id(params[:id])
  end

  def update 
    @artist = Artist.find_by_id(params[:id])
    if @artist.update(artist_params) 
      redirect_to artist_path(@artist)
    else 
      render :new
    end
  end

  private 

  # def artist_params(*args)
  #   params.require(:artist).permit(*args)
  # end

  def artist_params
    params.require(:artist).permit(:name, :bio)
  end
end
