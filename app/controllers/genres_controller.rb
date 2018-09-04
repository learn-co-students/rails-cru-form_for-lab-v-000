class GenresController < ApplicationController
  def show
		@genre = Genre.find_by_id(params[:id])
  end

	def new
		@genre = Genre.new
	end

  def create
    genre_ = Genre.create(post_params(:name))
    redirect_to genre_path(genre_)
  end

	def edit
		@genre = Genre.find_by_id(params[:id])
	end

	def update
		genre_ = Genre.find_by_id(params[:id])
		genre_.update(post_params(:name))
		redirect_to genre_path(genre_)
	end

 private

  # We pass the permitted fields in as *args;
  # this keeps `post_params` pretty dry while
  # still allowing slightly different behavior
  # depending on the controller action - LOOK INTO THE SPLAT OPERATOR
  def post_params(*args)
    params.require(:genre).permit(*args)
  end

end
