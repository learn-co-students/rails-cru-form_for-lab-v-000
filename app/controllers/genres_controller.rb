class GenresController < ApplicationController
  def index
    @genres=Genre.all
  end

  def show
    @genre=Genre.find(params[:id])
  end

  def new
    @genre=Genre.new
  end

  def create
    new_class=Genre.create(class_params)
    redirect_to genre_path(new_class)
  end

  def edit
    @genre=Genre.find(params[:id])
  end

  def update
    updated_class=Genre.find(params[:id])
    updated_class.update(class_params)
    updated_class.save
    redirect_to genre_path(updated_class)
  end

  private

    def controller_class
      Genre
    end
 
    def class_params
      params.require(:genre).permit(:name)
    end

end
