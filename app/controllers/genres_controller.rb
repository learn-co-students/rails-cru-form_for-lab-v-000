class GenresController < ApplicationController
  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(name: params[:genre][:name])
    redirect_to genre_path(@genre)
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(name: params[:genre][:name])
    redirect_to genre_path(@genre)
  end

  def show
    @genre = Genre.find(params[:id])
  end
end
