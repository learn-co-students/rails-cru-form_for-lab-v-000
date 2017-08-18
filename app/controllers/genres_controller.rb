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
		genre = Genre.new(list_params(:name))
		genre.save
		redirect_to genre_path(genre)
	end

	def edit
		@genre = Genre.new
	end

	def update
		genre = Genre.update(list_params(:name))
		redirect_to genre_path(genre)
	end

	private

	def list_params(*args)
		params.require(:genre).permit(*args)
	end
end
