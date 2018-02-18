class GenresController < ApplicationController

    def new
      @genre = Genre.new
    end

    def edit
      genre
    end

    def create
      @genre = Genre.new(genre_params(:name))
  	  @genre.save
  	  redirect_to genre_path(@genre)
    end

    def update
      genre
      @genre.update(genre_params(:name))
  	  redirect_to genre_path(@genre)
  	end

    def show
      genre
    end

    private
    def genre_params(*args)
      params.require(:genre).permit(*args)
    end

    def genre
      @genre = Genre.find(params[:id])
    end

  end
