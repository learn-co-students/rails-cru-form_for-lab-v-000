class GenresController < ApplicationController
  before_action :get_genre, only: [:show, :edit, :update]

  def index
  end

  def new
    @genre = Genre.new
  end

  def show
  end

  def create
    @genre = Genre.new(genre_params)
    if @genre.save
      redirect_to genre_url(@genre)
    else
      render "new"
    end
  end

  def edit
    render "new"
  end

  def update
    if @genre.update(genre_params)
      redirect_to genre_url(@genre)
    else
      render "new"
    end
  end

  private
  def genre_params
    params.require(:genre).permit(:name)
  end
  def get_genre
    @genre = Genre.find(params[:id])
  end
end
