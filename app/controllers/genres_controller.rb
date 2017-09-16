class GenresController < ApplicationController
    def index
  		@genres = Genre.all
  	end

  	def show
  		@genre = Genre.find(params[:id])
  	end

  	def edit
  	  @genre = Genre.find(params[:id])
  	end

  	def new
  		@genre = Genre.new
  	end

  	def create
      @genre = Genre.new(Genre_params(:name))
      @genre.save
      redirect_to genre_path(@genre)
    end

    def update
      @genre = Genre.find(params[:id])
      @genre.update(Genre_params(:name))
      redirect_to genre_path(@genre)
    end

    private


    # We pass the permitted fields in as *args;
    # this keeps `Genre_params` pretty dry while
    # still allowing slightly different behavior
    # depending on the controller action
    def Genre_params(*args)
      params.require(:genre).permit(*args)
    end


end
