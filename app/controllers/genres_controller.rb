class GenresController < ApplicationController
  before_action :set_params, only: [:show, :edit, :update]
  def new
    @genre = Genre.new
  end
  def create
    @genre = Genre.new(genre_params)
    if @genre.save
      redirect_to genre_path(@genre)
    else
      render "new"
    end
  end

  def index
    @genres = Genre.all
  end

  def show

  end

  def edit

  end
  def update
    if  @genre.update(genre_params)
      redirect_to genre_url(@genre)
    else
      render "edit"
    end
  end

  private
  def set_params
    @genre = Genre.find(params[:id])
  end
  def genre_params
    params.require(:genre).permit(:name)
  end
end
