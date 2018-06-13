class GenresController < ApplicationController
  def new 
    @genre = Genre.new 
    render 'form'
  end 
  
  def create
    @genre = Genre.create(genre_params)
    redirect_to genre_path(@genre)
  end 
  
  def edit 
    @genre = set_genre
    render 'form'
  end 
  
  def update
    @genre = set_genre
    @genre.update(genre_params)
    redirect_to genre_path(@genre)
  end 
  
  def show 
    @genre = set_genre
  end 
  
  private 
  
  def genre_params
    params.require(:genre).permit(:name)
  end 
  
  def set_genre 
    Genre.find(params[:id])
  end 
end
