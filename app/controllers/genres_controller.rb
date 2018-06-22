class GenresController < ApplicationController
  before_action :set_genre, only: [:show, :update, :edit]

  def index
    @genres = Genre.all
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params(:name))
    @genre.save

    redirect_to genre_path(@genre)
  end

  def edit
  end

  def update
    @genre.update(genre_params(:name))

    redirect_to genre_path(@genre)
  end

  def show
  end

  private
  def set_genre
    @genre = Genre.find(params[:id])
  end

  def genre_params(*args)
    params.require(:genre).permit(*args)
  end
end
