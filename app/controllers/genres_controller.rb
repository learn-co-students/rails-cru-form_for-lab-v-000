class GenresController < ApplicationController
  def index
    @genre = Genre.all
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.find_by(params[:id])
  end

  def show
    @genre = Genre.find_by(params[:id])
  end

  def update
    @genre= Genre.find_by(params[:id])
  end
end
