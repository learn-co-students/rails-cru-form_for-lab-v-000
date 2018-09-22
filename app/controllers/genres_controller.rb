require 'pry'
class GenresController < ApplicationController
  def new
    @genre = Genre.new
  end

  def create
    #binding.pry
    @genre = Genre.create(params.require(:genre).permit(:name))
    @genre.save
    redirect_to genre_path(@genre)
  end

  def edit
  end

  def update
  end

  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
  end
end
