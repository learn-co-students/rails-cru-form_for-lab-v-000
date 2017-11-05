class GenresController < ApplicationController
  before_action :set_genre, only: :show

  def index
        @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(params.require(:genre).permit(:name))
    @genre.save
    redirect_to genre_path(@genre)
  end

  def edit
    @genre = Genre.find(params[:id])
    redirect_to genre_path(@genre)
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(params.require(:genre).permit(:name))
    redirect_to genre_path(@genre)
  end

  private
  def genre_params(*args)
    params.require(:genre).permit(*args)
  end

  def set_genre
    @genre = Genre.find(params[:id])
  end
end
