class GenresController < ApplicationController
  
  def new
    @genre = Genre.new()
  end

  def create
    genre = Genre.create(params[:genre].permit(:name))
    redirect_to genre_path(genre)
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    genre = Genre.find(params[:id])
    genre.update(params[:genre].permit(:name))
    redirect_to genre_path(genre)
  end

  def destroy
    Genre.find(params[:id]).destroy
  end

end
