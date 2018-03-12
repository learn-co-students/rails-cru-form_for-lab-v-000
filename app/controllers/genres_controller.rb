class GenresController < ApplicationController
  def new
    
  end

  def create
    genre = Genre.create(params.require(:genre).permit(:name))
    redirect_to genre_path(genre)
  end

  def show
    @genre = Genre.find(params.require(:id))
  end

  def edit
    @genre = Genre.find(params.require(:id))
  end

  def update
    genre = Genre.update(params.require(:id), params.require(:genre).permit(:name))
    redirect_to genre_path(genre)
  end
end
