class GenresController < ApplicationController

  def new
    @genre = Genre.new
  end

  def show
    @genre = Genre.find_by(id: params[:id])
  end

  def create
  end

  private

  def genre_param
    params.require(:genre).permit(:name)
  end
end
