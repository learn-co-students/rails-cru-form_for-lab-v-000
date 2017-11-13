class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def show
    @genres = Genre.find(params[:id])
  end

  def new
  end

  def create
    @genres = Genre.create(name: params[:name])
    @genres.save
    redirect_to genre_path(@genres)
  end


end
