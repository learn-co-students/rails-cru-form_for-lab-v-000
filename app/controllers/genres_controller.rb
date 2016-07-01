class GenresController < ApplicationController
  def index
  end
  
  def show
    @genre = Genre.find(params[:id])
  end
  
  def new
    @genre = Genre.new
  end
  
  def create
    print genre_params
    @genre = Genre.create(genre_params)
    redirect_to genre_path(@genre)
  end
  
  def edit
    @genre = Genre.find(params[:id])
  end
  
  def update
    print genre_params
    @genre = Genre.find(params[:id])
    @genre.update(name: genre_params[:name])
    redirect_to genre_path(@genre)
  end
  
  private
  
  def genre_params
    params.require(:genre).permit(:name)
  end
end
