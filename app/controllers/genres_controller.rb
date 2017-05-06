
class GenresController < ApplicationController

  def new
    @genre = Genre.new
  end

  def show
    @genre = Genre.find_by(params[:id])
  end

  def create
    @genre = Genre.new(genre_params(:name))
    @genre.save
    redirect_to genre_path(@genre)
  end

  def edit
    @genre = Genre.find_by(params[:id])
  end

  def update
    @genre = Genre.find_by(params[:id])
    @genre.update(genre_params(:name))
    redirect_to genre_path(@genre)
  end
  
  def genre_params(*args)
    params.require(:genre).permit(*args)
  end
end
