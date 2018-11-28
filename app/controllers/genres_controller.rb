class GenresController < ApplicationController
  def show
    @genres = Genre.all
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(name: params[:genre][:name])
    redirect_to genre_path(@genre)
  end

  def edit
    @genre = Genre.find_by(params[:id])
  end

  def update
    @genre = Genre.find_by(params[:id])
    @genre.update(name: params[:genre][:name])
    redirect_to genre_path(@genre)
  end

end
