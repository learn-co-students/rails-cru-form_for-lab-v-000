class GenresController < ApplicationController

	def index
    	@genres = Genre.all
  	end

  def show
  	find_genre
  end

  def create
    @genre = Genre.new(genre_params)
    @genre.save
    redirect_to genre_path(@genre)
  end

  def update
    @genre = find_genre
    @genre.update(genre_params)
    redirect_to genre_path(@genre)
  end

  def edit
    @genre = find_genre
  end

  def new
    @genre = Genre.new
  end

  private

  def find_genre
    @genre = Genre.find(params[:id])
  end

  def genre_params
    params.require(:genre).permit(:name)
  end
end
