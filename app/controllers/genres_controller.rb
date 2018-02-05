class GenresController < ApplicationController
  before_action :load_genre, only: [:show, :edit, :update]

  def index
    @genre = Genre.all
  end

  def show
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params)
    if @genre.save
      redirect_to genre_path(@genre)
    else
      redirect_to new_genre_path
    end
  end

  def edit
  end

  def update
    if @genre.update(genre_params)
      redirect_to genre_path(@genre)
    else
      redirect_to edit_genre_path(@genre)
    end
  end

  private
  def genre_params
    params.require(:genre).permit(:name)
  end

  def load_genre
    @genre = Genre.find(params[:id])
  end
end
