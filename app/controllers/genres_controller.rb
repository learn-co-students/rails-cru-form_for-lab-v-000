class GenresController < ApplicationController

  def index
  end

  def show
    @genre = Genre.find_by(:id => params[:id])
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(get_params(:genre, :name))

    redirect_to genre_path(@genre)
  end

  def edit
    @genre = Genre.find_by(:id => params[:id])
  end

  def update
    @genre = Genre.find_by(:id => params[:id])
    @genre.update(get_params(:genre, :name))

    redirect_to genre_path(@genre)
  end
  
end
