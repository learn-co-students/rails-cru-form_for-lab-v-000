class GenresController < ApplicationController

def new
   end

   def create
       @genre = Genre.new(param_parser(:name))
       @genre.save
       redirect_to genre_path(@genre)
   end

   def index
       @genres = Genre.all
   end

   def show
       @genre = Genre.find(params[:id])
   end

   def edit
       @genre = Genre.find(params[:id])
   end

   def update
       @genre = Genre.find(params[:id])
       @genre.update(param_parser(:name))
       redirect_to genre_path(@genre)
   end

   private

   def param_parser(*args)
       params.require(:genre).permit(*args)
   end

end
