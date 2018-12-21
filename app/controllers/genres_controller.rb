class GenresController < ApplicationController
  
  def index
    @genres = Genre.all
  end
    
  def new 
  end 
  
  def show 
    @genre = Genre.find(params[:id])
  end 
  
  def create
    @genre = Genre.create(name: params[:genre][:name])
    redirect_to genre_path(@genre)
  end 
  
  def edit 
    @genre = Genre.find(params[:id])
  end 
  
  def update
    @genre = Genre.find(params[:id])
    @genre.update(name: params[:genre][:name])
    redirect_to genre_path(@genre)
  end 
end 
