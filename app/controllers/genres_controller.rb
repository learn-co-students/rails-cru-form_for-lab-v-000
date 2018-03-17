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
    @genre = Genre.create(params.require("genre").permit(:name))
    redirect_to genre_path(@genre)
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    parameters = params.require("genre").permit(:name)
    @genre = Genre.find(params[:id])
    @genre.update(parameters)
    redirect_to genre_path(@genre)
  end

end
