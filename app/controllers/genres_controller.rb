class GenresController < ApplicationController
  before_action :set_genre, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(require_params(:name))
    redirect_to_show
  end

  def update
    @genre.update(require_params(:name))
    redirect_to_show
  end

  private

  def set_genre
    @genre = Genre.find(params[:id])
  end

  def require_params(*args)
    params.require(:genre).permit(*args)
  end

  def redirect_to_show
    redirect_to genre_path(@genre)
  end
end
