class GenresController < ApplicationController

  def index
    @genre = Genre.all
  end

  def new
    @genre = Genre.new
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def create
     @genre = Genre.new(genre_params)
     @genre.save
     redirect_to genres_path(@genre)
  end

  def update
     @genre = Genre.find(params[:id])
     @genre.update(genre_params)
     redirect_to genre_path(@genre)
  end

  private

  def genre_params(*args)
    params.require(:genre).permit(*args)
  end

end