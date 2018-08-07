class GenresController < ApplicationController
  def show
    find_current_genre
  end

  def new
    @genre = Genre.new
  end

  def create
    redirect_to Genre.create(genre_params)
  end

  def edit
    find_current_genre
  end

  def update
    find_current_genre
    @genre.update(genre_params)
    redirect_to @genre
  end

  private

  def find_current_genre
    if params[:id] && params[:id].to_i.is_a?(Integer)
      @genre = Genre.find(params[:id].to_i)
    else
      raise params.inspect
    end
  end

  def genre_params
    params.require(:genre).permit(:name)
  end
end
