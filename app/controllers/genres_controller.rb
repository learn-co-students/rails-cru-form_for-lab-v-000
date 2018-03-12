class GenresController < ApplicationController
  before_action :set_genre, only: [:show, :edit, :update]

  def show
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(genre_params(:name))
    redirect_to genre_path(@genre)
  end

  def edit
  end

  def update
    @genre.update(genre_params(:name))
    redirect_to genre_path(@genre)
  end

  private

    def set_genre
      @genre = Genre.find(params[:id])
    end

    def genre_params(*args)
      params.require(:genre).permit(*args)
    end

end
