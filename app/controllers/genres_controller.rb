class GenresController < ApplicationController
  before_action :set_resource, only: [:show, :edit]

  def new
    @genre = Genre.new
  end

  def create
    genre = Genre.create(strong_params)
    redirect_to genre_path(genre)
  end

  def update
    genre = Genre.update_all(strong_params)
    redirect_to genre_path(genre)
  end

  private
  def strong_params
    params.require(:genre).permit(:name)
  end

  def set_resource
    @genre = Genre.find(params[:id])
  end
end
