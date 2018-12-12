class GenresController < ApplicationController

  before_action :set_genre!, only: [:show, :update, :edit]

  def index
	  @genres = Genre.all
  end

  def show
  end

  def new
	  @genre = Genre.new
  end
  def create
	  @genre = Genre.new(genre_params)
	  if @genre.save
	  	redirect_to genre_path(@genre)
	else
		render :new
	end
  end

  def edit
  end

  def update
	  @genre.update(genre_params)
	  if @genre.save
	  	redirect_to genre_path(@genre)
	else
		render :edit
	end
  end


  private

  def set_genre!
	  @genre = Genre.find(params[:id])
  end

  def genre_params
	  params.require(:genre).permit(:name)
  end
end
