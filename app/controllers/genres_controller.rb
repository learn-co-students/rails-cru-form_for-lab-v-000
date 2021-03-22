class GenresController < ApplicationController

  def show
    @genre = Genre.find(params[:id])
  end

  def new
    @genre = Genre.new
  end

  def create
    #binding.pry
    @genre = Genre.new
    @genre.name = params[:genre][:name]
    @genre.save
    redirect_to genre_path(@genre)
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    #binding.pry
    @genre = Genre.find(params[:id])
    @genre.update(name: params[:genre][:name])
    redirect_to genre_path(@genre)
  end

end
