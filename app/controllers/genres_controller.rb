require 'pry'

class GenresController < ApplicationController

  def index
    @genre = Genre.all
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
    @genre = Genre.new(song_params)
    @genre.save
    redirect_to genre_path(@genre)
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(params.require(:artist))
    redirect_to genre_path(@genre)
  end

  def school_class_params
    params.require(:genre).permit(:title, :room_number)
  end
end
