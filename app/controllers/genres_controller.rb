class GenresController < ApplicationController

  def show
    find_genre
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params(:name, :bio))
    @genre.save
    redirect_to genre_path(@genre)
  end

  def edit
    find_genre
  end

  def update
    find_genre
    @genre.update(genre_params(:name, :bio))
    redirect_to genre_path(@genre)
  end


  private
    def genre_params(*args)
      params.require(:genre).permit(*args)
    end

    def find_genre
      @genre = Genre.find(params[:id])
    end
end
