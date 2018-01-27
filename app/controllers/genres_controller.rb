class GenresController < ApplicationController
  
  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(strong_params)
    redirect_to genre_path(@genre)
  end

  def show
    @genre = find_id
  end

  def edit
    @genre = find_id
  end

  def update
    @genre = find_id
    @genre.update(strong_params)
    redirect_to genre_path(@genre)
  end

  private
    def strong_params
      params.require(:genre).permit(:name)
    end

    def find_id
      Genre.find(params[:id])
    end

end
