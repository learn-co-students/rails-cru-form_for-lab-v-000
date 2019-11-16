class GenresController < ApplicationController
  
    def index 
    @genres = Genre.all 
  end 
  
  def show 
    @genre = Genre.find(params[:id])
  end 
  
  def new 
    @genre = Genre.new
  end 
  
  def create 
    @genre = Genre.create(genre_params)
    redirect_to genre_path(@genre)
  end 
  
  def update 
    @genre = Genre.find(params[:id])
    @genre = Genre.update(genre_params)
    redirect_to genre_path(@genre)
  end 
  
  def edit 
    @genre = Genre.find(params[:id])
  end 
  
  private 
  
  def genre_params 
    params.require(:genre).permit(:name)
  end 
end
