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

  def edit
    @genre = Genre.find(params[:id])
  end

  def create
    genre = Genre.new(params.require(:genre))
    genre.save
    redirect_to genre_path(genre)
  end

  def update
    @genre = Genre.find(params[:id])
	  @genre.update(params.require(:genre))
	  redirect_to genres_path
  end

end
