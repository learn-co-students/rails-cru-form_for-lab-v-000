class GenresController < ApplicationController
  def index

  end

  def new
    #render new form
    @genre = Genre.new
  end

  def create
    #create new Object
    #reroute to show page
    @genre = Genre.create(params.require(:genre).permit(:name))
    redirect_to genre_path(@genre)
  end

  def show
    #query object by id
    #render show page with object specific info
    @genre = Genre.find(params[:id])
    @artists = Genre.all
  end

  def edit
    #query object by id
    @genre = Genre.find(params[:id])
    #render edit form
  end

  def update
    #query object by id
    #update that object
    @genre = Genre.find(params[:id])
    @genre.update(params.require(:genre).permit(:name))
    redirect_to genre_path(@genre)
    #reroute to show page
  end
end
