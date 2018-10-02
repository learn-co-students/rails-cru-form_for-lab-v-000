class GenresController < ApplicationController

    def index
        @genres = Genre.all
    end

    def new
        @genre = Genre.new
    end

    def show
        @genre = Genre.find(params[:id])
    end

    def create
        @genre = Genre.new(name: params[:genre][:name])
        @genre.save
        redirect_to genre_path(@genre)
      end
    
      def update
        @genre = Genre.find(params[:id])
        @genre.update(name: params[:genre][:name])
        redirect_to genre_path(@genre)
      end
    
      def edit
        @genre = Genre.find(params[:id])
      end
end
