class GenresController < ApplicationController
  # create, update, and show
  def new
    @genre = Genre.find(params[:id])
  end

  def create
    @genre = genre.create(genre_params)
    redirect_to genre_path(@genre)
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(genre_params)
    redirect_to genre_path(@genre)
  end

  private

  def genre_params(*args)
    params.require(:genre)
  end

end
