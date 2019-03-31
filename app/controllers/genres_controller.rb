class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def new
    @genre = Genre.new
  end

  def create
    genre = Genre.new(post_params(:name))
    genre.save

    redirect_to genre_path(genre)
  end

  def show
    @genre = find_by_id(Genre)
  end

  def edit
    @genre = find_by_id(Genre)
  end

  def update
    genre = find_by_id(Genre)
    genre.update(post_params(:name))

    redirect_to genre_path(genre)
  end

  private

    def post_params(*args)
      params.require(:genre).permit(*args)
    end
end
