class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find_by_id(params[:id])
  end

  def new
    @genre = Genre.new
  end
end
