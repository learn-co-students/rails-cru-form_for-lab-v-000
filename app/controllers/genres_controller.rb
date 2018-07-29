class GenresController < ApplicationController

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
        @genre = Genre.new
        @genre.name = params[:genre][:name]
        @genre.save
        redirect_to genre_path(@genre.id)
    end

    def update
        @genre = Genre.find(params[:id])
		@genre.update(params.require(:genre))
	    redirect_to artist_path(@genre)
    end
end
