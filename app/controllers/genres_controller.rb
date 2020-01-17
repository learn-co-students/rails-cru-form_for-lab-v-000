class GenresController < ApplicationController
    def index
          @genres = Genre.all
      end
      def show
          @genre = Genre.find(params[:id])
      end
      def new
          @genre = Genre.new
      end
      def create
          @genre = Genre.new
          @genre.name = params[:name]
          @genre.save
          redirect_to genre_path(@genre)
      end
      def edit
          @genre = Genre.find(params[:id])
      end
      def update
          @genre = Genre.find(params[:id])
          @genre.update(name: params[:genre][:name])
          redirect_to genre_path(@genre)
      end
      def post_params
          params.require(:genre).permit(:name)
      end
end
