class GenresController < ApplicationController
	include Paramable
	def index 
		@genres = Genre.all
	end

	def create
		@genre = Genre.new(paramable(:genre, :name))
		@genre.save
		redirect_to genre_path(@genre)
	end

	def new
		@genre = Genre.new
	end

	def show
		@genre = Genre.find(params[:id])
	end

	def edit
		@genre = Genre.find(params[:id])
	end

	def update
		@genre = Genre.find(params[:id])
		@genre.update(paramable(:genre, :name))
		redirect_to genre_path(@genre)
	end

end
