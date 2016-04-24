class GenresController < ApplicationController
  def show
    @genre = Genre.find(params_id)
  end

  def new
    @genre = Genre.new
  end

  def create
    if @genre = Genre.create(genre_params)
      redirect_to genre_path(@genre)
    else
      redirect_to new_genre_path
    end
  end

  def edit
    @genre = Genre.find(params_id)
  end

  def update
    @genre = Genre.find(params_id)
    if @genre.update(genre_params)
      redirect_to genre_path(@genre)
    else
      redirect_to edit_genre_path(@genre)
    end
  end

  def index
    @genres = Genre.all
  end

  private

    def genre_params
      params.require(:genre).permit(:name)
    end

    def params_id
      params.require(:id)
    end
end