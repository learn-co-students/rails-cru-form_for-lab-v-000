class GenresController < ApplicationController
  def new
  end

  def create
    genre = Genre.new
    genre.name = params[:genre][:name]
    genre.save
    redirect_to genre_path(genre)
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(name: params[:genre][:name])
    redirect_to genre_path(@genre)
  end
end
